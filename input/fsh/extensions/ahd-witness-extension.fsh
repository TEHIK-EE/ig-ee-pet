Extension: AHDWitnessReference
Id: ahd-witness-reference
Title: "AHD witness reference"
Description: "Reference to the witness if a witness was used in the AHD signing process"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-witness-reference"
* ^status = #draft
* ^version = "1.0.0"
* ^context[0].type = #element
* ^context[0].expression = "QuestionnaireResponse"

* value[x] 1..1
* value[x] only Reference(Person)
* valueReference ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-witness"