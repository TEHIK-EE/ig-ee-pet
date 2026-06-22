Profile: TrusteeRequestTask
Parent: Task
Id: trustee-request-task
Title: "Usaldusisiku kutse"
Description: "Task ressurss, eesmärgiga edastada kutse inimesele olla patsiendi elulõputahteavalduse usaldusisik"


* implicitRules 0..0
* language 0..0
* text 1..1
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* id 0..1
* meta.versionId 0..1

* identifier 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..0
* groupIdentifier 0..0
* partOf 0..0
* status 1..1
* statusReason 0..0
* businessStatus 0..0

* intent 1..1
* intent = #proposal

* priority 0..0
* doNotPerform 0..0

* code 1..1 
* code.id 0..0
* code.extension 0..0
* code.coding 0..0
* code.text = "Usaldusisikuks olemise kinnitamine"
* description 0..0

* focus 1..1 
* focus only Reference(AHDTrustee)
* focus.identifier 0..1


* for 1..1
* for only Reference(Patient)
* for ^type.targetProfile[0] = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
* encounter 0..0
* requestedPeriod 0..0
* executionPeriod 0..0
* authoredOn 0..0
* lastModified 0..0

* requester 1..1 
* requester only Reference(Patient or Practitioner)
* requester ^type.targetProfile[0] = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
* requester ^type.targetProfile[1] = "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner"


* requestedPerformer 1..1
* requestedPerformer.reference.identifier 0..1
* requestedPerformer only CodeableReference(AHDTrustee)

* owner 0..0
* performer 0..0
* location 0..0
* reason 0..0
* insurance 0..0
* note 0..0
* relevantHistory 0..0
* restriction 0..0
* input 0..0
* output 0..0
