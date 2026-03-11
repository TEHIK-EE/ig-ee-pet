Profile: AHDWitness
Parent: https://fhir.ee/mpi/StructureDefinition/ee-mpi-related-person
Id: ahd-witness
Title: "Tunnistaja"
Description: "Patsiendi poolt määratud tunnistaja (RelatedPerson) PET tahteavalduse kontekstis."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-witness"
* ^status = #draft
* ^version = "1.0.0"

* active 1..1

* patient 1..1
* patient only Reference(AHDPatient)
* patient ^type.targetProfile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"

* identifier 1..*
* name 1..1
