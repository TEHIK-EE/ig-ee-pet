Profile: AHDTrusteeSignedBinary
Parent: Binary
Id: ahd-trustee-signed-binary
Title: "AHD trustee's signature (Binary)"
Description: "Binary resource of the AHD RelatedPerson in asice container"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee-signed-binary"
* ^status = #draft
* ^version = "1.0.0"

// Unused base Binary elements
* meta.id 0..0
* meta.extension 0..0
* meta.source 0..0
* meta.security 0..0
* meta.tag 0..0
* implicitRules 0..0
* language 0..0
* id 0..1
* meta.versionId 0..1
* meta.lastUpdated 0..1
* meta.profile 1..1

* contentType 1..1
* contentType = #application/vnd.etsi.asic-e+zip
* securityContext 0..0

* data 1..1
