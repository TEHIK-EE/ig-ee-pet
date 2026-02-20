Profile: PETCounseling
Parent: Communication
Id: pet-counseling
Title: "PET nõustamise fakt"
Description: "Kirjeldab, kas patsient sai elulõpu tahteavalduse raames nõustatud ja kas on luba kinnitada PET."
* ^url = "https://fhir.ee/pet/StructureDefinition/pet-counseling"
* ^status = #draft
* ^version = "1.0.0"


* status 1..1
* status = #completed

* subject 1..1
* subject only Reference(PETPatient)


* sent 0..1


* sender 1..1
* sender only Reference(PractitionerRole) //muutub SPDks kui valmis
// * sender ^type.targetProfile = "https://fhir.ee/spd/StructureDefinition/ee-spd-practitioner-role"

* about 1..1
* about only Reference(EEBaseOrganization)
* about ^type.targetProfile = "https://fhir.ee/base/StructureDefinition/ee-organization"


* payload 0..*
  * content[x] 1..1
  * content[x] only string or Attachment or Reference(Resource)


* extension contains
    PETAllowedToSign named allowedToSign 1..1 and
    PETNotAllowedReason named notAllowedReason 0..1

