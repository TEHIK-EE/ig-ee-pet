Profile: AHDTrustee
Parent: https://fhir.ee/mpi/StructureDefinition/ee-mpi-related-person
Id: ahd-trustee
Title: "Usaldusisik"
Description: "Tahteavalduse koostaja jaoks määratud usaldusisik (RelatedPerson)."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"
* ^status = #draft
* ^version = "1.0.0"

* active 1..1

* patient 1..1
* patient only Reference(AHDPatient)
* patient ^type.targetProfile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"

* identifier 1..*
* name 1..1
* telecom 1..*
