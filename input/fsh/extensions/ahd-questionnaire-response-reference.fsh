Extension: AHDQuestionnaireResponseReference
Id: ahd-questionnaire-response-reference
Title: "Tahteavalduse vorm"
Description: "Viide PETile, millega usaldusisik on seotud."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-questionnaire-response-reference"
* ^status = #draft
* ^version = "1.0.0"

* value[x] 1..1
* value[x] only Reference(QuestionnaireResponse)
* valueReference ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-content"