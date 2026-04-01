Instance: AHDCompositionExample
InstanceOf: AHDComposition
Usage: #example
Title: "Patsiendi elulõpu tahteavalduse näidis"
Description: "Näidis PET Composition"

* id = "ahd-composition-example"

* status = #final
* date = "2026-04-01T11:00:00+03:00"

* type.text = "Patsiendi elulõpu tahteavaldus"
* title = "Patsiendi elulõpu tahteavaldus"

* subject = Reference(AHDPatientExample)
* author[0] = Reference(AHDPatientExample)

* extension[digitallyCreated].valueBoolean = true
* extension[approvalTime].valueDateTime = "2026-04-01T11:00:00+03:00"

// Tahteavalduse sisu
* section[AHDContent].title = "Tahteavalduse sisu"
* section[AHDContent].entry[0] = Reference(AHDQuestionnaireResponseExample)

// Fakt nõustamisest
* section[AHDCounseling].title = "Fakt nõustamisest"
* section[AHDCounseling].entry[0] = Reference(AHDCounselingEncounterExample)

// Nõustamise tulemus
* section[AHDCounselingResult].title = "Nõustamise tulemus"
* section[AHDCounselingResult].entry[0] = Reference(AHDCounselingResultExample)

// Usaldusisik
* section[AHDTrusteeSection].title = "Usaldusisik"
* section[AHDTrusteeSection].entry[0] = Reference(AHDTrusteeExample)

// Tunnistaja
* section[AHDWitnessSection].title = "Tunnistaja"
* section[AHDWitnessSection].entry[0] = Reference(AHDWitnessExample)