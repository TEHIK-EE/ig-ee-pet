# PET FHIR API

This page describes the public FHIR R5 contract of the PET (patient's end-of-life directive) service. It is derived from the current PET `CapabilityStatement` and the operation definitions maintained by the service. The runtime `GET /ahd/fhir/metadata` response remains the authoritative list of capabilities deployed in a particular environment.

## Base URL and media type

The FHIR endpoint is available below the service context path:

```text
https://{environment-host}/ahd/fhir
```

Requests and responses use `application/fhir+json`. Calls are protected by the upTIS security layer and must carry the authorization and X-Road tracing headers required by the environment. Bundle transaction and batch interactions are not supported.

## Supported resources and interactions

### QuestionnaireResponse (PET)

Profile: [AHD content](StructureDefinition-ahd-content.html)

| Method and path | Description | Main business rules |
| --- | --- | --- |
| `GET /QuestionnaireResponse/{id}` | Read the current PET version (UC-AHD-052). | The caller must be entitled to access the patient. |
| `GET /QuestionnaireResponse/{id}/_history/{versionId}` | Read a specific PET version (UC-AHD-052). | Both PET id and version id are mandatory. |
| `POST /QuestionnaireResponse` | Create a pre-filled PET (UC-AHD-050). | Body must conform to the AHD content profile and the patient/session rules. |
| `PUT /QuestionnaireResponse/{id}` | Update a pre-filled PET (UC-AHD-050). | Path id and resource id must identify the same PET; only a permitted pre-filled state may be changed. |
| `DELETE /QuestionnaireResponse/{id}` | Delete a pre-filled PET (UC-AHD-051). | Only the state permitted by the PET business rules can be deleted. |
| `GET /QuestionnaireResponse` | Search PETs (UC-AHD-052). | At least `patient` or `_id` is required. |
| `POST /QuestionnaireResponse/$complete` | Confirm a paper-signed PET (UC-AHD-055). | Input contains exactly one `bundle` parameter. |
| `POST /QuestionnaireResponse/{id}/$complete` | Confirm a digitally signed PET (UC-AHD-055). | Input contains exactly one `signedBinary` parameter. |
| `POST /QuestionnaireResponse/{id}/$cancel` | Cancel a confirmed PET (UC-AHD-056). | No input parameters; creates a new version with `entered-in-error`. |

Operations: [PET confirmation](OperationDefinition-ahd-complete.html) and [PET cancellation](OperationDefinition-ahd-cancel.html).

Search parameters:

| Parameter | Cardinality | Description |
| --- | --- | --- |
| `patient` | `0..1` | MPI id as `123` or `Patient/123`. Supports chained `patient.identifier`. Required when `_id` is absent. |
| `status` | `0..*` | `in-progress`, `completed` or `entered-in-error`, subject to caller role. Multiple values are comma-separated. |
| `_id` | `0..1` | PET logical id, for example `ahd123`. Required when `patient` is absent. |
| `_count` | `0..1` | Page size; default 20, maximum 200. `_count=0` returns only the total. |
| `_page` | `0..1` | One-based page number. |
| `_summary` | `0..1` | `true` or `false`. `true` omits answers and tags the result `SUBSETTED`. |
| `_sort` | `0..1` | `_lastUpdated` (alias `date`) and `_id`; prefix with `-` for descending order. |
| `_revinclude` | `0..1` | Supported value: `Provenance:target`; includes the PET signature metadata when available. |

QuestionnaireResponse does not support filtering by `_lastUpdated`; that field is available only as a sort key.

Unsupported `_include`, `_elements`, `_contained` and `_containedType` parameters produce an `OperationOutcome`. Other `_revinclude` values are rejected.

### Observation (counselling decision)

Profile: [AHD counselling result](StructureDefinition-ahd-counseling-result.html)

| Method and path | Description | Main business rules |
| --- | --- | --- |
| `POST /Observation` | Register a counselling decision. | Body must conform to the counselling-result profile and the patient/session rules. |
| `GET /Observation` | Search counselling decisions (UC-AHD-054). | `patient` is mandatory. |

Search parameters:

| Parameter | Cardinality | Description |
| --- | --- | --- |
| `patient` | `1..1` | MPI id or chained `patient.identifier`. |
| `_lastUpdated` | `0..1` | Supports `ge` and `gt`, for example `_lastUpdated=ge2026-05-01`. |
| `last` | `0..1` | Custom parameter. `last=true` returns only the latest valid decision. See [AHD counselling last](SearchParameter-ahd-counseling-last.html). |

### Task (trusted-person invitation)

Profile: [Trusted-person request Task](StructureDefinition-trustee-request-task.html)

| Method and path | Description | Main business rules |
| --- | --- | --- |
| `POST /Task` | Create a trusted-person invitation (UC-AHD-057). | The invitation must identify its PET/patient and requested performer. |
| `GET /Task` | Search invitations (UC-AHD-059). | Caller-specific required parameters apply; see below. |
| `DELETE /Task/{id}` | Delete an invitation (UC-AHD-072). | Only an invitation in a removable state may be deleted. |
| `POST /Task/{id}/$complete` | Accept an invitation (UC-AHD-060). | Requires one digitally signed `signedBinary`; environments without digital signing return HTTP 501. |
| `POST /Task/{id}/$reject` | Reject an invitation (UC-AHD-060). | No input parameters. |

Operations: [Invitation acceptance](OperationDefinition-ahd-task-complete.html) and [Invitation rejection](OperationDefinition-ahd-task-reject.html).

Search parameters:

| Parameter | Cardinality | Description |
| --- | --- | --- |
| `patient` | `0..1` | Required for a patient, representative or healthcare-worker query when `ahd-questionnaire-response-id` is absent. |
| `status` | `0..*` | `requested`, `completed` or `rejected`; comma-separated values are accepted. |
| `requestedperformer-reference` | `0..1` | Invitation recipient as `RelatedPerson/{id}` or chained `.identifier`; required when the recipient queries invitations. |
| `ahd-questionnaire-response-id` | `0..1` | PET id. Custom parameter documented as [AHD QuestionnaireResponse id](SearchParameter-ahd-questionnaire-response-id.html). |
| `_lastUpdated` | `0..1` | Supports `ge` and `gt`. |

### RelatedPerson (trusted person)

Profile: [AHD trusted person](StructureDefinition-ahd-trustee.html)

| Method and path | Description | Main business rules |
| --- | --- | --- |
| `GET /RelatedPerson/{id}` | Read a trusted person (UC-AHD-061). | Caller must be entitled to the related patient. |
| `GET /RelatedPerson` | Search trusted persons (UC-AHD-061). | Required parameter depends on caller role. |
| `DELETE /RelatedPerson/{id}` | Remove a trusted person (UC-AHD-062). | Removal follows PET validity and authorization rules. |
| `POST /RelatedPerson/$confirm` | Healthcare worker confirms a paper-signed trusted person (UC-AHD-058). | Requires one collection `bundle` containing RelatedPerson and Provenance. |

Operation: [Trusted-person confirmation](OperationDefinition-ahd-trustee-confirm.html).

Search parameters:

| Parameter | Cardinality | Description |
| --- | --- | --- |
| `patient` | `0..1` | Patient MPI id or chained `patient.identifier`; required for patient/representative/healthcare-worker searches when PET id is absent. |
| `identifier` | `0..1` | Personal id or `RelatedPerson/{id}`; required when a trusted person searches for themself. |
| `active` | `0..1` | Healthcare workers may query only active trusted persons (`active=true`). |
| `ahd-questionnaire-response-id` | `0..1` | PET id custom parameter. |
| `_revinclude` | `0..1` | Supported value: `Provenance:target`. |

### Provenance (signature metadata)

Profiles: [Trusted-person signature Provenance](StructureDefinition-ahd-trustee-signature-provenance.html) and [PET signature Provenance](StructureDefinition-ahd-signature-provenance.html)

| Method and path | Description | Main business rules |
| --- | --- | --- |
| `GET /Provenance` | Search trusted-person signature metadata (UC-AHD-061). | At least `target` or `_id` is required. |

Search parameters:

| Parameter | Cardinality | Description |
| --- | --- | --- |
| `target` | `0..1` | Signed `RelatedPerson/{id}`. Chained RelatedPerson identifier, patient and active parameters are supported. |
| `_id` | `0..1` | Provenance logical id; required when `target` is absent. |
| `_include` | `0..*` | `Provenance:entity:Binary` and `Provenance:target:RelatedPerson`. |

`Patient` appears in the CapabilityStatement only to resolve chained `patient.identifier` searches. PET does not expose Patient resource interactions.

## Digital signing stage

Digital completion of a PET and digital acceptance of a trusted-person invitation use an ASiC-E container in the `signedBinary` parameter. In the packaged stage-1 mock configuration (`AHD_STAGE1_MOCK=true`), the service parses the container without DigiDoc signature verification and stores it locally instead of DRIT. This mode is for stage-1 development and must not be treated as production signature validation. If the mock is disabled before the stage-2 DigiDoc and DRIT integrations are available, these digital operations fail closed with HTTP 501.

## Common behavior and business rules

- Every interaction is authorized separately for the patient, representative,
  healthcare-worker, or trusted-person role. Access to one patient's resource does
  not grant access to another patient.
- Patient references are checked against the caller's session and MPI identity.
- PET update and deletion are limited to permitted pre-filled states. Confirmation
  and cancellation create new history instead of rewriting signed versions.
- Counselling decisions must identify the same patient and satisfy the counselling
  profile and decision rules.
- Invitation operations enforce recipient, caller-role, PET-validity, and current
  status rules. Only the addressed trusted person can accept or reject an invitation.
- Paper-signing Bundles contain the matching business resource and Provenance.
  Digital calls contain an ASiC-E Binary and follow the stage limitation above.
- Invalid input and business-rule failures return an `OperationOutcome`. Successful
  deletes return HTTP 204 without a body; successful PET cancellation returns HTTP
  200 without a FHIR response body.

## Endpoint example coverage

The examples below cover every distinct request and response shape. Interactions
that share a FHIR shape intentionally reuse the same example.

| Interactions | Example or response shape |
| --- | --- |
| QuestionnaireResponse read, version-read, create, and update | [Create a pre-filled PET](#create-a-pre-filled-pet); the response is the stored QuestionnaireResponse with id and version metadata. |
| QuestionnaireResponse, Task, and RelatedPerson delete | HTTP 204 with no body after the resource-specific authorization and state checks. |
| QuestionnaireResponse search | [Search PETs](#search-pets), returning a searchset Bundle. |
| QuestionnaireResponse paper and digital confirmation | [Confirm a digitally signed PET](#confirm-a-digitally-signed-pet); paper confirmation substitutes the documented collection `bundle`. Both return the shown Parameters references. |
| QuestionnaireResponse cancellation | [Cancel a PET](#cancel-a-pet), returning HTTP 200 with no body. |
| Observation create and search | [Register a counselling decision](#register-a-counselling-decision); search returns a searchset Bundle containing the same Observation shape. |
| Task create and search | A profile-conformant request Task is returned with HTTP 201; search returns those Task resources in a searchset Bundle. |
| Task accept and reject | [Search and accept a trusted-person invitation](#search-and-accept-a-trusted-person-invitation); reject has no input and returns `task` and `trustedPerson` references. |
| RelatedPerson read and search | The [paper-confirmation](#confirm-a-paper-signed-trusted-person) RelatedPerson shape is returned directly or inside a searchset Bundle. |
| RelatedPerson paper confirmation | [Confirm a paper-signed trusted person](#confirm-a-paper-signed-trusted-person), returning `relatedPerson` and `provenance` references. |
| Provenance search and includes | A searchset Bundle contains matching Provenance entries; requested Binary or RelatedPerson includes use search mode `include`. |
| All validation and business-rule failures | [OperationOutcome](#errors), interpreted together with the HTTP status. |

## Request and response examples

The examples below are trimmed, illustrative excerpts. Production request bodies must conform to the linked profiles, and requests must include the environment-specific authorization and tracing headers.

### Search PETs

```http
GET /ahd/fhir/QuestionnaireResponse?patient=Patient/123&status=completed&_count=20&_sort=-_lastUpdated&_revinclude=Provenance:target
Accept: application/fhir+json
```

```json
{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 1,
  "entry": [{
    "fullUrl": "https://example.test/ahd/fhir/QuestionnaireResponse/ahd123",
    "resource": {
      "resourceType": "QuestionnaireResponse",
      "id": "ahd123",
      "status": "completed",
      "subject": { "reference": "Patient/123" },
      "meta": { "profile": ["https://fhir.ee/ahd/StructureDefinition/ahd-content"] }
    }
  }]
}
```

### Create a pre-filled PET

```http
POST /ahd/fhir/QuestionnaireResponse
Content-Type: application/fhir+json

{
  "resourceType": "QuestionnaireResponse",
  "meta": { "profile": ["https://fhir.ee/ahd/StructureDefinition/ahd-content"] },
  "status": "in-progress",
  "subject": { "reference": "Patient/123" },
  "questionnaire": "https://fhir.ee/qre/Questionnaire-AHD|1.0.0"
}
```

```http
HTTP/1.1 201 Created
Content-Type: application/fhir+json
Location: /ahd/fhir/QuestionnaireResponse/ahd123/_history/1
```

The response body is the stored `QuestionnaireResponse` with its assigned id, version and update time.

### Confirm a digitally signed PET

```http
POST /ahd/fhir/QuestionnaireResponse/ahd123/$complete
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [{
    "name": "signedBinary",
    "resource": {
      "resourceType": "Binary",
      "contentType": "application/vnd.etsi.asic-e+zip",
      "data": "{base64-encoded-container}"
    }
  }]
}
```

```json
{
  "resourceType": "Parameters",
  "parameter": [
    { "name": "questionnaireResponse", "valueReference": { "reference": "QuestionnaireResponse/ahd123" } },
    { "name": "provenance", "valueReference": { "reference": "Provenance/ahd456" } },
    { "name": "signedBinary", "valueReference": { "reference": "Binary/ahd789" } }
  ]
}
```

For paper signing, call the type-level `/QuestionnaireResponse/$complete` operation and supply `bundle` instead of `signedBinary`. The collection Bundle contains one AHD `QuestionnaireResponse` and one signing `Provenance`.

### Cancel a PET

```http
POST /ahd/fhir/QuestionnaireResponse/ahd123/$cancel
Content-Type: application/fhir+json

{
  "resourceType": "Parameters"
}
```

```http
HTTP/1.1 200 OK
```

The operation creates a new `QuestionnaireResponse` version with status `entered-in-error` and returns an empty body.

### Register a counselling decision

```http
POST /ahd/fhir/Observation
Content-Type: application/fhir+json

{
  "resourceType": "Observation",
  "meta": { "profile": ["https://fhir.ee/ahd/StructureDefinition/ahd-counseling-result"] },
  "status": "final",
  "subject": { "reference": "Patient/123" },
  "effectiveDateTime": "2026-08-31T10:00:00+03:00"
}
```

Successful creation returns HTTP 201 and the stored Observation.

### Search and accept a trusted-person invitation

```http
GET /ahd/fhir/Task?requestedperformer-reference.identifier=https://fhir.ee/sid/pid/est/ni|{national-id}&status=requested
Accept: application/fhir+json
```

The response is a searchset Bundle of matching Task resources. To accept an invitation:

```http
POST /ahd/fhir/Task/ahd321/$complete
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [{
    "name": "signedBinary",
    "resource": {
      "resourceType": "Binary",
      "contentType": "application/vnd.etsi.asic-e+zip",
      "data": "{base64-encoded-container}"
    }
  }]
}
```

The result is a Parameters resource containing references named `task`, `relatedPerson`, `provenance` and `signedBinary`.

### Confirm a paper-signed trusted person

```http
POST /ahd/fhir/RelatedPerson/$confirm
Content-Type: application/fhir+json

{
  "resourceType": "Parameters",
  "parameter": [{
    "name": "bundle",
    "resource": {
      "resourceType": "Bundle",
      "type": "collection",
      "entry": [
        { "resource": { "resourceType": "RelatedPerson", "patient": { "reference": "Patient/123" } } },
        { "resource": { "resourceType": "Provenance" } }
      ]
    }
  }]
}
```

The result contains references named `relatedPerson` and `provenance`.

### Create and search trusted-person invitations

```http
POST /ahd/fhir/Task
Content-Type: application/fhir+json

{
  "resourceType": "Task",
  "meta": { "profile": ["https://fhir.ee/ahd/StructureDefinition/trustee-request-task"] },
  "status": "requested",
  "intent": "order",
  "focus": { "reference": "QuestionnaireResponse/ahd123" },
  "for": { "reference": "Patient/123" },
  "requestedPerformer": [{ "reference": { "reference": "RelatedPerson/ahd900" } }]
}
```

HTTP 201 returns the stored Task with its assigned id. A search such as
`GET /ahd/fhir/Task?requestedperformer-reference=RelatedPerson/ahd900&status=requested`
returns those resources in a searchset Bundle. Successful rejection returns:

```json
{
  "resourceType": "Parameters",
  "parameter": [
    { "name": "task", "valueReference": { "reference": "Task/ahd321" } },
    { "name": "trustedPerson", "valueReference": { "reference": "RelatedPerson/ahd900" } }
  ]
}
```

### Search trusted persons and signature metadata

```http
GET /ahd/fhir/RelatedPerson?patient=Patient/123&active=true&_revinclude=Provenance:target
Accept: application/fhir+json
```

```json
{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 1,
  "entry": [{
    "resource": {
      "resourceType": "RelatedPerson",
      "id": "ahd900",
      "active": true,
      "patient": { "reference": "Patient/123" }
    },
    "search": { "mode": "match" }
  }]
}
```

Signature metadata can be queried together with its Binary and RelatedPerson:

```http
GET /ahd/fhir/Provenance?target=RelatedPerson/ahd900&_include=Provenance:entity:Binary&_include=Provenance:target:RelatedPerson
Accept: application/fhir+json
```

```json
{
  "resourceType": "Bundle",
  "type": "searchset",
  "total": 1,
  "entry": [
    {
      "resource": {
        "resourceType": "Provenance",
        "id": "ahd901",
        "target": [{ "reference": "RelatedPerson/ahd900" }],
        "recorded": "2026-08-31T10:05:00Z",
        "agent": [{ "who": { "reference": "PractitionerRole/77" } }],
        "entity": [{ "role": "source", "what": { "reference": "Binary/ahd902" } }]
      },
      "search": { "mode": "match" }
    },
    {
      "resource": {
        "resourceType": "Binary",
        "id": "ahd902",
        "contentType": "application/vnd.etsi.asic-e+zip",
        "data": "UEtQVA=="
      },
      "search": { "mode": "include" }
    }
  ]
}
```

## Errors

Validation, authorization and business-rule failures are returned as FHIR `OperationOutcome` resources. For example:

```json
{
  "resourceType": "OperationOutcome",
  "issue": [{
    "severity": "error",
    "code": "invalid",
    "details": { "text": "The request does not satisfy the PET API contract." }
  }]
}
```

Clients must use the HTTP status together with `OperationOutcome.issue`; they must not depend on the example text above.

## Contract synchronization

The PET service and this implementation guide publish the same canonical operation and custom search-parameter definitions:

- [PET confirmation](OperationDefinition-ahd-complete.html)
- [PET cancellation](OperationDefinition-ahd-cancel.html)
- [Trusted-person invitation acceptance](OperationDefinition-ahd-task-complete.html)
- [Trusted-person invitation rejection](OperationDefinition-ahd-task-reject.html)
- [Trusted-person confirmation](OperationDefinition-ahd-trustee-confirm.html)
- [Latest counselling decision](SearchParameter-ahd-counseling-last.html)
- [Search by PET id](SearchParameter-ahd-questionnaire-response-id.html)

Any change to the service `CapabilityStatement`, these conformance resources, endpoint rules or examples must be reflected in this page and republished in the IG.
