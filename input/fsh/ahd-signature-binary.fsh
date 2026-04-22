Profile: AHDSignedBinary
Parent: Binary
Id: ahd-signed-binary
Title: "Allkirjastatud PET vorm"
Description: "Allkirjastatud PET vorm asice containeris"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signed-binary"
* ^status = #draft
* ^version = "1.0.0"

* contentType 1..1
* contentType = #application/vnd.etsi.asic-e+zip

* data 1..1

* securityContext 1..1
* securityContext only Reference(QuestionnaireResponse)
* securityContext ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-content"