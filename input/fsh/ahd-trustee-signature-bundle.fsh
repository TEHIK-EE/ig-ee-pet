Profile: AHDTrusteeSignedBundle
Parent: Bundle
Id: ahd-trustee-signed-bundle
Title: "Usaldusisiku edastamine koos paberallkirja andmetega"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee-signed-bundle"
* ^status = #draft
* ^version = "1.0.0"

// Unused base Bundle elements
* implicitRules 0..0
* language 0..0
* identifier 0..0
* type 1..1
* type = #collection

* timestamp 1..1
* total 0..0
* link 0..0

* entry 2..*
* entry.resource 1..1

* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry contains
  trustee 1..1 and
  provenance 1..1

* entry[trustee].fullUrl 0..1
* entry[trustee].resource 1..1
* entry[trustee].resource only RelatedPerson

* entry[provenance].fullUrl 0..1
* entry[provenance].resource 1..1
* entry[provenance].resource only AHDTrusteeSignatureProvenance

* signature 0..0
* issues 0..0
