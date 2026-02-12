Profile: PETDecision
Parent: Composition
Id: pet
Description: "Patsiendi elulõpu tahteavaladus"
* ^experimental = false
* ^abstract = true
* modifierExtension ..0
* implicitRules ..0
* identifier 1..1
* identifier.use ..0
* identifier ^short = "Dokumendi number"
* identifier.value 1..1
* status ^short = "PET staatus"
* type ^short = "Composition ressursi tüüp. Fikseeritud väärtus"
* type.coding = $DT#96 "Patsiendi elulõpu tahteavaldus"
* subject only Reference(Patient)
* subject ^type.targetProfile = MpiPatientVerified
* subject 1..1
* subject ^short = "MPI Patient reference"
* encounter ..0
* date ^short = "PET koostamise aeg"
* date 1..1
* author 1..1
* author ^short = "Viide contained PractitionerRole ressursile"
* attester ..0
* relatesTo ..0


// sections
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = #code
* section ^slicing.rules = #open
* section contains PETConsultation 0..1 and PETQuestionnaireResponse 1..1 and PETTrustee 0..1 and PETWitness 0..1

* section[PETConsultation] ^short = "PET konsultatsiooni tulemus"
* section[PETConsultation].entry 1..1
* section[PETConsultation].entry only Reference(PETConsultation)
* section[PETConsultation].modifierExtension ..0

* section[PETQuestionnaireResponse] ^short = "Patsiendi elulõpu tahteavalduse sisu"
* section[PETQuestionnaireResponse].entry 1..1
* section[PETQuestionnaireResponse].modifierExtension ..0
* section[PETQuestionnaireResponse].entry only Reference(PETQuestionnaireResponse)
* section[PETQuestionnaireResponse].entry ^short = "Viide täidetud tahteavaldusele"
* section[PETQuestionnaireResponse].entry.reference ^short = "Kanooniline viide tahteavaldusele (PET QuestionnaireResponse ressursile)"
* section[PETQuestionnaireResponse].entry.identifier ..1
* section[PETQuestionnaireResponse].entry.identifier ^short = "Tahteavalduse dokumendi number kui PET QuestionnaireResponse ressursile ei saa viidata"
* section[PETQuestionnaireResponse].entry.identifier.use 0..0
* section[PETQuestionnaireResponse].entry.identifier.value ^short = "Tahteavalduse dokumendi number välises infosüsteemis"
* section[PETQuestionnaireResponse].entry.identifier.value 1..1

* section[PETTrustee] ^short = "Usaldusisik"
* section[PETTrustee].entry 0..1
* section[PETTrustee].entry only Reference(PETTrustee)
* section[PETTrustee].entry ^short = "Viide usaldusisikule"
* section[PETTrustee].text 0..1


* section[PETWitness] ^short = "Tunnistaja"
* section[PETWitness].entry 0..1
* section[PETWitness].entry only Reference(PETWitness)
* section[PETWitness].entry ^short = "Viide tunnistajale"
* section[PETWitness].text 1..1


