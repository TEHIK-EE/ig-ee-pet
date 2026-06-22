Extension: AHDTrusteeStatus
Id: ahd-trustee-status
Title: "Usaldusisiku staatus"
Description: "Tahteavalduse usaldusisiku staatus (ootel | kehtiv | tagasilükatud | tühistatud)."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee-status"
* ^status = #draft
* ^version = "1.0.0"
* ^context[0].type = #element
* ^context[0].expression = "RelatedPerson"
* value[x] only code
* valueCode 1..1
* valueCode from AHDTrusteeStatusVS (required)