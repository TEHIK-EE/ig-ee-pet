Profile: AHDSignedBundle
Parent: Bundle
Id: ahd-signed-bundle
Title: "PET koos täidetud vormi ja täitja allkirjaga"
Description: "Komplekt ressurssidest nagu PET vorm (questionnaireResponse) ja Provenance"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signed-bundle"
* ^status = #draft
* ^version = "1.0.0"

* type 1..1
* type = #collection

* timestamp 1..1

* entry 2..*
* entry.resource 1..1

* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry contains
  QRContent 1..1 and
  provenance 1..1

* entry[QRContent].fullUrl 0..1
* entry[QRContent].resource 1..1
* entry[QRContent].resource only AHDQuestionnaireResponse

* entry[provenance].fullUrl 0..1
* entry[provenance].resource 1..1
* entry[provenance].resource only AHDSignatureProvenance
