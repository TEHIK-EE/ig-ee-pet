Profile: AHDComposition
Parent: Composition
Id: ahd-composition
Title: "Patsiendi elulõpu tahteavaldus"
Description: "Kaasab endas fakte, kellele vormistati PET, tahteavalduse sisu, usaldusisik, tunnistaja, kas on saanud nõustatud mingi tahteavalduse staatust"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-composition"
* ^status = #draft
* ^version = "1.0.0"

* status 1..1
* date 1..1

* type 1..1
* title 1..1
* title = "Patsiendi elulõpu tahteavaldus"

* subject 1..1
* subject only Reference(AHDPatient)

* author 1..*
* author only Reference(AHDPatient)

* extension contains
    AHDDigitallyCreated named digitallyCreated 1..1 and
    AHDApprovalTime named approvalTime 0..1 


* section 1..*
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "title"
* section ^slicing.rules = #open
* section contains
    AHDContent 1..1 and
    AHDCounseling 0..* and
    AHDCounselingResult 0..* and
    AHDTrusteeSection 0..1 and
    AHDWitnessSection 0..1

* section[AHDContent].title 1..1
* section[AHDContent].title = "Tahteavalduse sisu"
* section[AHDContent].entry 1..1
* section[AHDContent].entry only Reference(AHDQuestionnaireResponse)

* section[AHDCounseling].title 1..1
* section[AHDCounseling].title = "Fakt nõustamisest"
* section[AHDCounseling].entry 0..*
* section[AHDCounseling].entry only Reference(Encounter)
* section[AHDCounseling].entry ^type.targetProfile = Canonical(AHDCounselingEncounter)

* section[AHDCounselingResult].title 1..1
* section[AHDCounselingResult].title = "Nõustamise tulemus"
* section[AHDCounselingResult].entry 0..*
* section[AHDCounselingResult].entry only Reference(Observation)
* section[AHDCounselingResult].entry ^type.targetProfile = Canonical(AHDCounselingResult)

// * section[AHDTrusteeSection].title 1..1
// * section[AHDTrusteeSection].title = "Usaldusisik"
// * section[AHDTrusteeSection].entry 0..1
// * section[AHDTrusteeSection].entry only Reference(RelatedPerson)
// * section[AHDTrusteeSection].entry ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"

* section[AHDWitnessSection].title 1..1
* section[AHDWitnessSection].title = "Tunnistaja"
* section[AHDWitnessSection].entry 0..1
* section[AHDWitnessSection].entry only Reference(RelatedPerson)
* section[AHDWitnessSection].entry ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-witness"