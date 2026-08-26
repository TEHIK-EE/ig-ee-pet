Profile: AHDWitness
Parent: RelatedPerson
Id: ahd-witness
Title: "Tunnistaja"
Description: "Tunnistaja PET tahteavalduse kontekstis. Keegi, kes annab patsiendi teovõime puudumise korral tahteavaldusele allkirja"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-witness"
* ^status = #draft
* ^version = "1.0.0"

* meta.id 0..0
* meta.extension 0..0
* meta.source 0..0
* meta.security 0..0
* meta.tag 0..0

// Unused base RelatedPerson elements
* implicitRules 0..0
* language 0..0
* text 0..1
* contained 0..0
* extension 0..0
* modifierExtension 0..0

* active 1..1
* patient 1..1
* patient only Reference(https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified)
* relationship 0..0 // tunnistaja roll tuleb Provenance.agent.role kaudu, mitte isikliku seosena
* identifier 1..*
* name 1..1
* telecom 0..0
* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* period 0..0
* communication 0..0