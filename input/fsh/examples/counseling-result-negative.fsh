Instance: AHDCounselingNegativeResultExample
InstanceOf: AHDCounselingResult
Usage: #example
Title: "Nõustamise otsuse näidis - negatiivne"
Description: "Näidis PET nõustamise otsus, kus patsiendil ei ole lubatud PET allkirjastada"

* id = "ahd-counseling-result-example"
* meta.profile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-result"

* status = #final
* subject = Reference(AHDPatientExample)
* encounter = Reference(Encounter/ahd-counseling-encounter-example)
* performer[0] = Reference(PractitionerRole/ahd-counseling-practitioner-example)

* code.text = "Luba kinnitada PET"

* effectiveInstant = "2026-05-26T10:30:00+02:00"

* valueBoolean = false

* note[0].text = "Nõustamise hetkel patsient enam piisavalt otsustusvõimeline, et adekvaatselt mõista loobutavatest sekkumistest"