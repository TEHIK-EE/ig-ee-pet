Profile: AHDSignedBinary
Parent: Binary
Id: ahd-signed-binary
Title: "Allkirjastatud PET vorm"
Description: "Allkirjastatud PET vorm asice containeris"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signed-binary"
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
