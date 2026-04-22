Profile: AHDSignedBundle
Parent: Bundle
Id: ahd-signed-bundle
Title: "PET koos täidetud vormi ja täitja allkirjaga"
Description: "Komplekt ressurssidest nagu PET vorm (questionnaireResponse), allkiri (asice sisaldav Binary) ja Provenance"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signed-bundle"
* ^status = #draft
* ^version = "1.0.0"

* type 1..1
* type = #collection

* timestamp 1..1

* entry 3..*
* entry.resource 1..1

* entry ^slicing.discriminator[0].type = #profile
* entry ^slicing.discriminator[0].path = "resource"
* entry ^slicing.rules = #open
* entry contains
    nativeContent 1..1 and
    signedArtifact 1..1 and
    provenance 1..1 and
    witness 0..1 and
    trustee 0..1 and
    counselingResult 0..1

* entry[nativeContent].resource only AHDQuestionnaireResponse
* entry[signedArtifact].resource only AHDSignedBinary
* entry[provenance].resource only AHDSignatureProvenance
* entry[witness].resource only AHDWitness
* entry[trustee].resource only AHDTrustee
* entry[counselingResult].resource only AHDCounselingResult