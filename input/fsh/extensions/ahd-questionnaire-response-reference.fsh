Extension: AHDQuestionnaireResponseReference
Id: ahd-questionnaire-response-reference
Title: "AHD content reference"
Description: "Reference to the content that the trustee is connected with."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-questionnaire-response-reference"
* ^status = #draft
* ^version = "1.0.0"
* ^context[0].type = #element
* ^context[0].expression = "RelatedPerson"

* value[x] 1..1
* value[x] only Reference(QuestionnaireResponse)
* valueReference ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-content"
