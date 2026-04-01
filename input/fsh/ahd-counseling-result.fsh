Profile: AHDCounselingResult
Parent: Observation
Id: ahd-counseling-result
Title: "PET nõustamise tulemus"
Description: "Nõustamise tulemus: kas patsiendil on lubatud PET kinnitada, ja kui ei ole, siis põhjus."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-result"
* ^status = #draft
* ^version = "1.0.0"

* status 1..1
* status = #final

* subject 1..1
* subject only Reference(Patient)
* subject ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"

* encounter 1..1
* encounter only Reference(Encounter)
* encounter ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling"

* code 1..1
* code.text = "Luba kinnitada PET"

* value[x] 1..1
* value[x] only boolean

* component 0..1
* component.code 1..1
* component.code.text = "Põhjus, miks PET kinnitamine ei ole lubatud"
* component.value[x] 1..1
* component.value[x] only string