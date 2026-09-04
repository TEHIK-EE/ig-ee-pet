Profile: AHDTrustee
Parent: RelatedPerson
Id: ahd-trustee
Title: "AHD trustee (RelatedPerson)"
Description: "Patient can request a trustee who will represent thir wishes when the patient is incapable of doing so. Difference with witness: witness represents the patient in the AHD signing process when the trustee represents the patient's wishes when the AHD has activated."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"
* ^status = #draft
* ^version = "1.0.0"

// Unused base RelatedPerson elements
* meta.id 0..0
* meta.extension 0..0
* meta.source 0..0
* meta.security 0..0
* meta.tag 0..0
* implicitRules 0..0
* language 0..0
* text 0..1
* contained 0..0
* modifierExtension 0..0
* id 0..1
* meta.versionId 0..1
* meta.lastUpdated 0..1
* meta.profile 1..1

* extension 2..2
* extension contains
    AHDQuestionnaireResponseReference named questionnaireResponse 1..1 and AHDTrusteeStatus named status 1..1
* extension ^slicing.rules = #closed

* identifier 1..*

* active 1..1

* patient 1..1
* patient only Reference(Patient)
* patient ^type.targetProfile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"

* relationship 1..1
* relationship from https://fhir.ee/ValueSet/isiku-seos-patsiendiga (required)
* relationship.id 0..0
* relationship.extension 0..0
* relationship.text 0..0
* relationship.coding 1..1
* relationship.coding.code 1..1
* relationship.coding.code = #CON
* relationship.coding.system 1..1
* relationship.coding.system = "https://fhir.ee/CodeSystem/olemi-seos"
* relationship.coding.id 0..0
* relationship.coding.extension 0..0
* relationship.coding.version 0..0
* relationship.coding.userSelected 0..0



* name 0..1
* telecom 0..*
* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* period 0..0
* communication 0..0
