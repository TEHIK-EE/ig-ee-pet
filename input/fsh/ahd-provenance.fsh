Profile: AHDSignatureProvenance
Parent: Provenance
Id: ahd-signature-provenance
Title: "PET provenance"
Description: "Allkirjastamise provenance profiil, mille target on nii PET vorm (QuestionnaireResponse) kui ka Binary artifakt"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signature-provenance"
* ^status = #draft
* ^version = "1.0.0"

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


* agent 1..1
* agent.role 1..1
* agent.role.coding.system = "https://fhir.ee/ValueSet/allkirjastaja-roll" //Uus loend

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

* entity.what 1..1
* entity.what only Reference(Binary)




