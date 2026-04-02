Instance: AHDWitnessExample
InstanceOf: AHDWitness
Usage: #example
Title: "Tunnistaja näidis"
Description: "Näidis tunnistaja AHD kontekstis"

* id = "ahd-witness-example"
* active = true

* patient = Reference(AHDPatientExample)

* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[0].value = "48901010011"


* relationship[class][0].coding[0].code = #CON
* relationship[class][0].coding[0].display = "contact"


* relationship[person].coding[0].code = #106328005
* relationship[person].coding[0].display = "Social worker"

* period.start = "2026-04-01"

* name.use = #official
* name.family = "Tamm"
* name.given[0] = "Jaan"