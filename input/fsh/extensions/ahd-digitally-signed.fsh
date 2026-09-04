Extension: AHDSignedDigitally
Id: ahd-signed-digitally
Title: "Digitally signed (Boolean)"
Description: "Shows whether the AHD content was filled and signed digitally by the patient (via National Health Portal Terviseportaal) or as a paper format by the patient or a witness (digitalized by the practitioner via TJT)."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signed-digitally"
* ^status = #draft
* ^version = "1.0.0"
* ^context[0].type = #element
* ^context[0].expression = "QuestionnaireResponse"

* value[x] 1..1
* value[x] only boolean
