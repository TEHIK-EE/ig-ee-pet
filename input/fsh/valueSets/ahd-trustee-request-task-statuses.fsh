ValueSet: AHDTrusteeRequestTaskStatusVS
Id: ahd-trustee-request-task-status-vs
Title: "Usaldusisiku kutse staatus"
Description: "Usaldusisiku kutse (Task) lubatud staatused: ootel, kinnitatud, tagasilükatud. Alamhulk FHIR task-status koodisüsteemist."
* ^url = "https://fhir.ee/ahd/ValueSet/ahd-trustee-request-task-status-vs"
* ^status = #draft
* ^version = "1.0.0"
* ^experimental = false

* http://hl7.org/fhir/task-status#requested "Requested"
* http://hl7.org/fhir/task-status#completed "Completed"
* http://hl7.org/fhir/task-status#rejected  "Rejected"

