Instance: AHDPatientExample
InstanceOf: EEMPIPatientVerified
Usage: #example
Description: "MPI patsiendi näidis"
Title: "Patsient Pauliine Jänes"
* id = "200"
* active = true
* identifier[0]
  * system = "https://fhir.ee/sid/pid/est/ni"
  * value = "49406240016"
* name[official]
  * use = #official
  * given = "Pauliine"
  * family = "Jänes"

Instance: AHDCounselingHCPExample
InstanceOf: AHDCounselingHCP
Usage: #example
Description: "Näidis arst, kes viib läbi PET nõustamise"

* id = "ahd-counseling-hcp-example"

* identifier.system = "https://fhir.ee/sid/pro/tervishoiutootaja-kood"
* identifier.value = "D12345"

* practitioner = Reference(PractitionerExample)
* organization = Reference(OrganizationExample)

* specialty.text = "Perearst"
 

 Instance: PractitionerExample
InstanceOf: Practitioner
Usage: #example
Title: "Perearsti näidis"
Description: "Näidis arst, kes võib läbi viia PET nõustamise"

* id = "practitioner-example"
* active = true

* identifier[0].system = "https://example.ee/fhir/sid/hcp-person-id"
* identifier[0].value = "38101010021"

* name[0].use = #official
* name[0].family = "Tamm"
* name[0].given[0] = "Katrin"

* telecom[0].system = #phone
* telecom[0].value = "+3726001234"
* telecom[0].use = #work

* qualification[0].code.text = "Arst"

Instance: OrganizationExample
InstanceOf: Organization
Usage: #example
Title: "Tervishoiuasutuse näidis"
Description: "Näidis organisatsioon, kus PET nõustamine toimus"

* id = "organization-example"
* active = true
* name = "Kesklinna Perearstikeskus"

* identifier[0].system = "https://example.ee/fhir/sid/org-registry-code"
* identifier[0].value = "12345678"



