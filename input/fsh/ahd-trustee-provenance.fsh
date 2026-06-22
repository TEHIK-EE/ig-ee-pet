Profile: AHDTrusteeSignatureProvenance
Parent: Provenance
Id: ahd-trustee-signature-provenance
Title: "Usaldusisiku allkirja andmed"
Description: "Kui usaldusisik on nõus olema patsiendi usaldusisik, siis Provenance ressursiga edastatakse allkirjastamise andmed"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee-signature-provenance"
* ^status = #draft
* ^version = "1.0.0"

// Unused base Provenance elements
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

* target 1..1
* target ^slicing.discriminator[0].type = #profile
* target ^slicing.discriminator[0].path = "$this"
* target ^slicing.rules = #open
* target contains Trustee 1..1

* target[Trustee] only Reference(RelatedPerson)
* target[Trustee] ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"

* patient 1..1
* patient only Reference(EEMPIPatient)
* patient ^type.targetProfile[0] = "https://fhir.ee/StructureDefinition/ee-mpi-patient-verified"

* recorded 0..0
* occurred[x] 1..1
* occurredDateTime 0..1
* occurredPeriod 0..0

* policy 0..0
* location 0..0
* authorization 0..0
* activity 0..0
* basedOn 0..0
* encounter 0..0

* agent 1..*
* agent.id 0..0 
* agent.extension 0..0
* agent.modifierExtension 0..0
* agent.type 0..0
* agent.role 1..1
* agent.role.id 0..0 
* agent.role.extension 0..0
* agent.role.text 0..0
* agent.role.coding 1..1
* agent.role.coding.system 1..1
* agent.role.coding.system = "https://fhir.ee/ValueSet/allkirjastaja-roll" //Uus loend
* agent.role.coding.code 1..1
* agent.role.coding.id 0..0
* agent.role.coding.extension 0..0 
* agent.role.coding.version 0..0
* agent.role.coding.userSelected 0..0

* agent.who 1..1
* agent.who only Reference(Patient or RelatedPerson)
* agent.who ^type.targetProfile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"
* agent.who ^type.targetProfile[+] = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"

* agent.onBehalfOf 0..1
* agent.onBehalfOf only Reference(Patient)
* patient ^type.targetProfile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"


* entity 0..*
* entity.id 0..0
* entity.extension 0..0
* entity.modifierExtension 0..0
* entity.agent 0..0
* entity.role 1..1
* entity.role = #source

* entity.what 1..1
* entity.what only Reference(AHDTrusteeSignedBinary)

* signature 0..0




