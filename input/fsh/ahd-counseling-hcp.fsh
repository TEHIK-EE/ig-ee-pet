Profile: AHDCounselingHCP
Parent: PractitionerRole
Id: ahd-counseling-hcp
Title: "PET nõustav tervishoiutöötaja"
Description: "Tervishoiutöötaja roll, kes viib läbi PET nõustamise. Peab olema arst."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-hcp"
* ^status = #draft
* ^version = "1.0.0"

* obeys ahd-counselor-must-be-doctor

* identifier 1..1
* identifier.value 1..1

* practitioner 1..1
* organization 1..1

* specialty 1..1