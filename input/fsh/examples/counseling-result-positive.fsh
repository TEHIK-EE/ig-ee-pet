Instance: AHDCounselingPositiveResultExample
InstanceOf: AHDCounselingResult
Usage: #example
Title: "Nõustamise otsuse näidis - positiivne "
Description: "Näidis PET nõustamise otsus, kus patsiendil on lubatud PET allkirjastada"

* id = "ahd-counseling-positive-result-example"
* meta.profile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-result"

* status = #final
* code.text = "Luba kinnitada PET"

* subject = Reference(AHDPatientExample)
* encounter = Reference(Encounter/ahd-counseling-encounter-example)
* performer[0] = Reference(PractitionerRole/ahd-counseling-practitioner-example)

* effectiveInstant = "2026-05-26T11:15:00+02:00"

* valueBoolean = true