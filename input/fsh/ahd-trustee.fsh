Profile: AHDTrustee
Parent: RelatedPerson
Id: ahd-trustee
Title: "Usaldusisik"
Description: "Tahteavalduse koostaja jaoks määratud usaldusisik (RelatedPerson)."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"
* ^status = #draft
* ^version = "1.0.0"

// Unused base RelatedPerson elements
* implicitRules 0..0
* language 0..0
* text 0..0
* contained 0..0
* modifierExtension 0..0
* id 0..1
* meta.versionId 0..1
* meta.lastUpdated 0..1
* meta.profile = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"

* extension contains
    AHDQuestionnaireResponseReference named questionnaireResponse 1..1

* identifier 1..*

* active 1..1

* patient 1..1
* patient only Reference(Patient)
* patient ^type.targetProfile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"

* relationship.coding 1..1
* relationship.coding.system = "https://fhir.ee/ValueSet/isiku-seos-patsiendiga"
* relationship.coding.code = #CON


* name 0..1
* telecom 0..*
* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* period 0..0
* communication 0..0
