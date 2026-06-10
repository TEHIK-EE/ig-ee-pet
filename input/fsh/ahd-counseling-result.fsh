Profile: AHDCounselingResult
Parent: Observation
Id: ahd-counseling-result
Title: "PET nõustamise otsus"
Description: "Nõustamise otsus: kas patsiendil on lubatud PET kinnitada, ja kui ei ole, siis põhjus."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-result"
* ^status = #draft
* ^version = "1.0.0"

* obeys ahd-counseling-reason

// Unused base Observation elements
* implicitRules 0..0
* language 0..0
* text 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* id 0..1
* meta.versionId 0..1
* meta.lastUpdated 0..1
* meta.profile 1..1

* identifier 0..0
* instantiates[x] 0..0
* basedOn 0..0
* triggeredBy 0..0
* partOf 0..0
* status 1..1
* status from AHDCounselingResultStatusVS (required)

* category 0..0
* code 1..1
* code.text = "Luba kinnitada PET"

* effectiveInstant 1..1

* subject 1..1
* subject only Reference(Patient)
* subject ^type.targetProfile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
* focus 0..0

* encounter 0..1
* encounter only Reference(Encounter)

* issued 0..0
* performer 1..1
* performer only Reference(PractitionerRole)
* performer ^type.targetProfile = "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner-role"


* value[x] 1..1
* value[x] only boolean

* dataAbsentReason 0..0
* interpretation 0..0
* note 0..1
* note ^condition[+] = "ahd-counseling-reason"
* bodySite 0..0
* bodyStructure 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0
