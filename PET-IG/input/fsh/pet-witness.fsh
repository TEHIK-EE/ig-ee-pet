Profile: PETWitness
Parent: https://fhir.ee/mpi/StructureDefinition/ee-mpi-related-person
Id: pet-witness
Title: "Tunnistaja"
Description: "Patsiendi poolt määratud tunnistaja (RelatedPerson) PET tahteavalduse kontekstis."
* ^url = "https://fhir.ee/pet/StructureDefinition/pet-witness"
* ^status = #draft
* ^version = "1.0.0"

* active 1..1

* patient 1..1
* patient only Reference(EEBasePatient)
* patient ^type.targetProfile = "https://fhir.ee/base/StructureDefinition/ee-patient"

* identifier 1..*
* name 1..1
