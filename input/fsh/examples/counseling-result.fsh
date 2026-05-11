Instance: AHDCounselingResultExample
InstanceOf: AHDCounselingResult
Usage: #example
Title: "Nõustamise otsuse näidis"
Description: "Näidis PET nõustamise otsus, kus patsiendil ei ole lubatud PET allkirjastada"

* id = "ahd-counseling-result-example"
* meta.profile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-counseling-result"

* status = #final
* subject = Reference(AHDPatientExample)
* encounter.reference = "Encounter/ahd-counseling-encounter-example"
* performer[0].reference = "PractitionerRole/ahd-counseling-practitioner-example"

* code.text = "Luba kinnitada PET"

* valueBoolean = false

* component[0].code.text = "Põhjus, miks PET kinnitamine ei ole lubatud"
* component[0].valueCodeableConcept.coding.code = #1
* component[0].valueCodeableConcept.coding.display = "Puudulik otsustusvõime"
* component[0].valueCodeableConcept.coding.system = "https://fhir.ee/ValueSet/pet-keelamise-pohjus"

* note[0].text = "Nõustamise hetkel patsient enam piisavalt otsustusvõimeline, et adekvaatselt mõista loobutavatest sekkumistest"