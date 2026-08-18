Profile: AHDTrusteeSignedBundle
Parent: Bundle
Id: ahd-trustee-signed-bundle
Title: "Usaldusisiku edastamine koos paberallkirja andmetega"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee-signed-bundle"
* ^status = #draft
* ^version = "1.0.0"

// Unused base Bundle elements
* meta.id 0..0
* meta.extension 0..0
* meta.source 0..0
* meta.security 0..0
* meta.tag 0..0
* meta.versionId 0..0
* meta.lastUpdated 0..0
* id 0..0
* implicitRules 0..0
* language 0..0
* identifier 0..0
* type 1..1
* type = #collection
* meta.profile 1..1

* timestamp 1..1
* total 0..0
* link 0..0

* entry 2..2
* entry.resource 1..1
* entry.id 0..0
* entry.extension 0..0
* entry.modifierExtension 0..0
* entry.link 0..0
* entry.search 0..0
* entry.request 0..0
* entry.response 0..0

* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #closed
* entry contains
  trustee 1..1 and
  provenance 1..1

* entry[trustee].fullUrl 0..1
* entry[trustee].resource 1..1
* entry[trustee].resource only AHDTrustee

* entry[provenance].fullUrl 0..1
* entry[provenance].resource 1..1
* entry[provenance].resource only AHDTrusteeSignatureProvenance

* signature 0..0
* issues 0..0
