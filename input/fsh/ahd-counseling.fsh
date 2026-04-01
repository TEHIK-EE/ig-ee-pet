Profile: AHDCounselingEncounter
Parent: Encounter
Id: ahd-counseling
Title: "PET nõustamise visiit"
Description: "Nõustamise käigus toimunud tervishoiukohtumine PET vormistamise kontekstis."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling"
* ^status = #draft
* ^version = "1.0.0"

* status 1..1

* subject 1..1
* subject only Reference(Patient)
* subject ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"

* serviceProvider 1..1
* serviceProvider only Reference(Organization)
* serviceProvider ^type.targetProfile = "https://fhir.ee/base/StructureDefinition/ee-organization"

* participant 1..*
* participant.actor 1..1
* participant.actor only Reference(PractitionerRole)
* participant.actor ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-hcp"

* type 0..1
* type.text = "AHD nõustamine"

* actualPeriod 0..1