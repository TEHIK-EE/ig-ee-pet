Profile: AHDSignatureProvenance
Parent: Provenance
Id: ahd-signature-provenance
Title: "PET provenance"
Description: "Allkirjastamise provenance profiil, mille target on nii PET vorm (QuestionnaireResponse) kui ka Binary artifakt"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signature-provenance"
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
* target contains
    QRContent 1..1 
* target[QRContent] only Reference(QuestionnaireResponse)
* target[QRContent] ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-content|1.0.0"

* patient 1..1
* patient only Reference(Patient)
* patient ^type.targetProfile[0] = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"

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
* agent.role.id 0..0 
* agent.role.extension 0..0
* agent.role.text  0..0
* agent.role.coding.system 1..1
* agent.role.coding.code 1..1
* agent.role.coding.system = "https://fhir.ee/ValueSet/allkirjastaja-roll" //Uus loend
* agent.role.coding.id 0..0
* agent.role.coding.extension 0..0
* agent.role.coding.version 0..0
* agent.role.coding.userSelected 0..0


* agent.who 1..1
* agent.who only Reference(Patient)
* agent.who ^type.targetProfile[0] = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
* agent.who ^type.targetProfile[+] = "https://fhir.ee/ahd/StructureDefinition/ahd-witness"

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



