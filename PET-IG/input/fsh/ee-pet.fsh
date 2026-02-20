Profile: PETComposition
Parent: Composition
Id: pet-composition
Title: "Patsiendi elulõpu tahteavaldus"
Description: "Kaasab endas fakte, kellele vormistati PET, tahteavalduse sisu, usaldusisik, tunnistaja, kas on saanud nõustatud mingi tahteavalduse staatust"
* ^url = "https://fhir.ee/pet/StructureDefinition/pet-composition"
* ^status = #draft
* ^version = "1.0.0"

* status 1..1
* date 1..1

* type 1..1
* title 1..1
* title = "Patsiendi elulõpu tahteavaldus"

* subject 1..1
* subject only Reference(PETPatient)

* author 1..*
* author only Reference(PETPatient)

* extension contains
    PETDigitallyCreated named digitallyCreated 1..1 and
    PETApprovalTime named approvalTime 0..1 


* section 1..*
* section ^slicing.discriminator[0].type = #value
* section ^slicing.discriminator[0].path = "title"
* section ^slicing.rules = #open
* section contains
    PETContent 1..1 and
    PETCounseling 0..* and
    PETTrusteeSection 0..1 and
    PETWitnessSection 0..1

* section[PETContent].title 1..1
* section[PETContent].title = "Tahteavalduse sisu"
* section[PETContent].entry 1..1
* section[PETContent].entry only Reference(PETQuestionnaireResponse)

* section[PETCounseling].title 1..1
* section[PETCounseling].title = "Fakt nõustamisest"
* section[PETCounseling].entry 0..*
* section[PETCounseling].entry only Reference(Communication)
* section[PETCounseling].entry ^type.targetProfile = Canonical(PETCounseling)

* section[PETTrusteeSection].title 1..1
* section[PETTrusteeSection].title = "Usaldusisik"
* section[PETTrusteeSection].entry 0..1
* section[PETTrusteeSection].entry only Reference(RelatedPerson)
* section[PETTrusteeSection].entry ^type.targetProfile = "https://fhir.ee/pet/StructureDefinition/pet-trustee"

* section[PETWitnessSection].title 1..1
* section[PETWitnessSection].title = "Tunnistaja"
* section[PETWitnessSection].entry 0..1
* section[PETWitnessSection].entry only Reference(RelatedPerson)
* section[PETWitnessSection].entry ^type.targetProfile = "https://fhir.ee/pet/StructureDefinition/pet-witness"