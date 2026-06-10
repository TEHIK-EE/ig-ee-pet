Profile: AHDWitness
Parent: Person
Id: ahd-witness
Title: "Tunnistaja"
Description: "Patsiendi poolt määratud tunnistaja (Person) PET tahteavalduse kontekstis."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-witness"
* ^status = #draft
* ^version = "1.0.0"

// Unused base Person elements
* implicitRules 0..0
* language 0..0
* text 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* active 1..1

* identifier 1..*
* name 1..1
* telecom 0..0
* gender 0..0
* birthDate 0..0
* deceased[x] 0..0
* address 0..0
* maritalStatus 0..0
* photo 0..0
* communication 0..0
* managingOrganization 0..0
* link 0..0
