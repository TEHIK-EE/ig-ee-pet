Invariant: ahd-patient-must-be-adult
Description: "PET patsient peab olema vähemalt 18 aastane"
Severity: #error
Expression: "extension('https://fhir.ee/base/StructureDefinition/ee-patient-age').value.ofType(Quantity).exists() and extension('https://fhir.ee/base/StructureDefinition/ee-patient-age').value.ofType(Quantity) >= 18 'a'"