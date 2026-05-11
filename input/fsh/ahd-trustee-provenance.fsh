Profile: AHDTrusteeSignatureProvenance
Parent: Provenance
Id: ahd-trustee-signature-provenance
Title: "Usaldusisiku allkirja andmed"
Description: "Kui usaldusisik on nõus olema patsiendi usaldusisik, siis Provenance ressursiga edastatakse allkirjastamise andmed"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee-signature-provenance"
* ^status = #draft
* ^version = "1.0.0"

* id 0..1
* meta.versionId 0..1
* meta.lastUpdated 0..1
* meta.profile 1..1

* target 2..2
* target ^slicing.discriminator[0].type = #profile
* target ^slicing.discriminator[0].path = "$this"
* target ^slicing.rules = #open
* target contains
    QRContent 1..1 and
    Trustee 1..1
* target[QRContent] only Reference(QuestionnaireResponse)
* target[QRContent] ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-content|1.0.0"
* target[Trustee] only Reference(RelatedPerson)
* target[Trustee] ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"

* patient 1..1
* patient only Reference(Patient)
* patient ^type.targetProfile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"

* recorded 0..0
* occurred[x] 1..1
* occurredDateTime 1..1
* occurredPeriod 0..0

* agent 1..*
* agent.role 1..1
* agent.role.coding.system = "https://fhir.ee/ValueSet/allkirjastaja-roll" //Uus loend

* agent.who 1..1
* agent.who only Reference(Patient or RelatedPerson)
* agent.who ^type.targetProfile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"
* agent.who ^type.targetProfile[+] = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"

* agent.onBehalfOf 0..1
* agent.onBehalfOf only Reference(Patient)
* patient ^type.targetProfile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"


* entity 0..*
* entity.role 1..1
* entity.role = #source

* entity.what 1..1
* entity.what only Reference(Binary)




