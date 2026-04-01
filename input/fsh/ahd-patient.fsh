Profile: AHDPatient
Parent: https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified
Id: ahd-patient
Title: "PET patsient"
Description: "Patsient, kelle kohta tahteavaldus käib"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"
* ^status = #draft
* ^version = "1.0.0"

* obeys ahd-patient-must-be-adult

* active 1..1
* identifier 1..*
* name 1..*