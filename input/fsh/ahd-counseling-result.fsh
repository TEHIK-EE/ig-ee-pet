Profile: AHDCounselingResult
Parent: Observation
Id: ahd-counseling-result
Title: "PET nõustamise otsus"
Description: "Nõustamise otsus: kas patsiendil on lubatud PET kinnitada, ja kui ei ole, siis põhjus."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-result"
* ^status = #draft
* ^version = "1.0.0"

* obeys ahd-counseling-reason

* id 0..1
* meta.versionId 0..1
* meta.lastUpdated 0..1
* meta.profile 1..1

* status 1..1
* status from AHDCounselingResultStatusVS (required)

* code 1..1
* code.text = "Luba kinnitada PET"

* effectiveInstant 1..1

* subject 1..1
* subject only Reference(Patient)
* subject ^type.targetProfile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"

* encounter 0..1
* encounter only Reference(Encounter)

* performer 1..1
* performer only Reference(PractitionerRole)
* performer ^type.targetProfile = "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner-role"


* value[x] 1..1
* value[x] only boolean

* component 0..1
* component ^condition[+] = "ahd-counseling-reason"
* component.code 1..1
* component.value[x] 1..1
* component.value[x] only CodeableConcept

* note 0..1
* note ^condition[+] = "ahd-counseling-reason"