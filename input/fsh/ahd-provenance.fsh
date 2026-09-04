Profile: AHDSignatureProvenance
Parent: Provenance
Id: ahd-signature-provenance
Title: "AHD signature data (Provenance)"
Description: "Data about the signing process of the AHD questionnaire response. Provides info about when the signing occurred, whether the signer was the patient or a capable witness and the signature itself."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signature-provenance"
* ^status = #draft
* ^version = "1.0.0"
* ^experimental = false

// Unused base Provenance elements
* meta.id 0..0
* meta.extension 0..0
* meta.source 0..0
* meta.security 0..0
* meta.tag 0..0
* implicitRules 0..0
* language 0..0
* text 0..1
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* id 0..1
* meta.versionId 0..1
* meta.lastUpdated 0..1
* meta.profile 1..1

* target 1..1
* target only Reference(AHDQuestionnaireResponse)

* patient 1..1
* patient only Reference(https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified)

* recorded 0..0
* occurred[x] 1..1
* occurred[x] only dateTime

* policy 0..0
* location 0..0
* authorization 0..0
* activity 0..0
* basedOn 0..0
* encounter 0..0

* agent 1..1
* agent.id 0..0
* agent.extension 0..0
* agent.modifierExtension 0..0
* agent.type 0..0
* agent.role 1..1
* agent.role from AHDSignerRoleVS (required)
* agent.role.id 0..0 
* agent.role.extension 0..0
* agent.role.text  0..0
* agent.role.coding 1..1
* agent.role.coding.system 1..1
* agent.role.coding.code 1..1
* agent.role.coding.id 0..0
* agent.role.coding.extension 0..0
* agent.role.coding.version 0..0
* agent.role.coding.userSelected 0..0



* agent.who 1..1
* agent.who only Reference(https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified or AHDWitness)

* agent.onBehalfOf 0..1
* agent.onBehalfOf only Reference(Patient)
* agent.onBehalfOf ^type.targetProfile[0] = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"




* entity 0..1
* entity.role 1..1
* entity.role = #source
* entity.id 0..0
* entity.extension 0..0
* entity.modifierExtension 0..0
* entity.agent 0..0

* entity.what 1..1
* entity.what only Reference(AHDSignedBinary)

* signature 0..0



