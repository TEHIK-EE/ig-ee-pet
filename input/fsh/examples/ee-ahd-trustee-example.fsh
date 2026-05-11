Instance: AHDTrusteeExample
InstanceOf: AHDTrustee
Usage: #example
Title: "Usaldusisiku näidis"
Description: "Näidis usaldusisik AHD kontekstis"

* id = "ahd-trustee-example"
* meta.profile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-trustee"

* active = true

* extension[questionnaireResponse].valueReference = Reference(AHDQuestionnaireResponseExample)

* patient = Reference(AHDPatientExample)

* relationship.coding[0].system = "https://fhir.ee/ValueSet/isiku-seos-patsiendiga"
* relationship.coding[0].code = #CON

* identifier[0].system = "https://fhir.ee/sid/pid/est/ni"
* identifier[0].value = "47505020022"

* name[0].use = #official
* name[0].family = "Maasikas"
* name[0].given[0] = "Mari"

* telecom[0].system = #phone
* telecom[0].value = "+37251234567"
* telecom[0].use = #mobile

* telecom[1].system = #email
* telecom[1].value = "mari.maasikas@example.ee"
* telecom[1].use = #home