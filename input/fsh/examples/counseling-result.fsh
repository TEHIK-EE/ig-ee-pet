Instance: AHDCounselingResultExample
InstanceOf: AHDCounselingResult
Usage: #example
Title: "Nõustamise tulemuse näidis"
Description: "Näidis PET nõustamise tulemus, kus patsiendil ei ole lubatud PET allkirjastada"

* id = "ahd-counseling-result-example"

* status = #final
* subject = Reference(AHDPatientExample)


* code.text = "Luba kinnitada PET"

* valueBoolean = false

* component[0].code.text = "Põhjus, miks PET kinnitamine ei ole lubatud"
* component[0].valueString = "Patsient ei olnud nõustamise hetkel otsustusvõimeline."