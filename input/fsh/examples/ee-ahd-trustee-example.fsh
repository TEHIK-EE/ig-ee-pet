Instance: AHDTrusteeExample
InstanceOf: AHDTrustee
Usage: #example
Title: "Usaldusisiku näidis"
Description: "Näidis usaldusisik AHD kontekstis"

* id = "ahd-trustee-example"
* active = true

* patient = Reference(AHDPatientExample)

* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[0].value = "47505020022"

* name.use = #official
* name.family = "Maasikas"
* name.given[0] = "Mari"

* relationship[class][0].coding[0].code = #CON
* relationship[class][0].coding[0].display = "Kontakt"

* relationship[person].coding[0].code = #394863008
* relationship[person].coding[0].display = "Mitte-pereliige"

* period.start = "2026-04-01"

* telecom[0].system = #phone
* telecom[0].value = "+37251234567"
* telecom[0].use = #mobile

* telecom[1].system = #email
* telecom[1].value = "mari.maasikas@example.ee"
* telecom[1].use = #home