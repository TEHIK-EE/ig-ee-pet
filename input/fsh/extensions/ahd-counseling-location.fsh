Extension: AHDCounselingOrganization
Id: ahd-counseling-organization
Title: "PET Nõustamise asutus"
Description: "Asutus, kus tahteavalduse nõustamine läbi viidi."
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-organization"
* ^status = #draft
* ^version = "1.0.0"

* value[x] 1..1
* value[x] only Reference(EEBaseOrganization)
* valueReference ^type.targetProfile = "https://fhir.ee/base/StructureDefinition/ee-organization" //Asendada SPD organizationiga