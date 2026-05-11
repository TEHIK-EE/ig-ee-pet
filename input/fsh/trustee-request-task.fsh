Profile: TrusteeRequestTask
Parent: Task
Id: trustee-request-task
Title: "Usaldusisiku kutse"
Description: "Task ressurss, eesmärgiga edastada kutse inimesele olla patsiendi elulõputahteavalduse usaldusisik"

* id 0..1
* meta.versionId 0..1
* status 1..1

* intent 1..1
* intent = #proposal


* code 1..1 
* code.text = "Usaldusisikuks olemise kinnitamine"

* focus 1..1 
* focus only Reference(RelatedPerson)
* focus.identifier 0..1


* for 1..1
* for only Reference(Patient)

* requester 1..1 
* requester only Reference(Patient or PractitionerRole)

* requestedPerformer 1..1
* requestedPerformer.reference.identifier 0..1
* requestedPerformer only CodeableReference(RelatedPerson)