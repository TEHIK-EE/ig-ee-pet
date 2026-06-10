Profile: AHDCounselingHCP
Parent: PractitionerRole
Id: ahd-counseling-hcp
Title: "PET nõustav tervishoiutöötaja"
Description: "Tervishoiutöötaja roll, kes viib läbi PET nõustamise. Peab olema arst."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-hcp"
* ^status = #draft
* ^version = "1.0.0"

* obeys ahd-counselor-must-be-doctor

// Unused base PractitionerRole elements
* implicitRules 0..0
* language 0..0
* text 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* active 0..0
* period 0..0
* code 0..0
* location 0..0
* healthcareService 0..0
* contact 0..0
* characteristic 0..0
* communication 0..0
* availability 0..0
* endpoint 0..0

* identifier 1..1
* identifier.value 1..1

* practitioner 1..1
* organization 1..1

* specialty 1..1
