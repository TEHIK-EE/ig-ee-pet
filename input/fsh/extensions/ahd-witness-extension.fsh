Extension: AHDWitnessReference
Id: ahd-witness-reference
Title: "Tunnistaja"
Description: "Tunnistaja, kui patsiendi tahteavalduse kinnitamisel on tunnistaja olemas."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-witness-reference"
* ^status = #draft
* ^version = "1.0.0"

* value[x] 1..1
* value[x] only Reference(RelatedPerson)
* valueReference ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-witness"