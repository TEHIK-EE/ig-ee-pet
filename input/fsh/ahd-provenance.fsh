Profile: AHDSignatureProvenance
Parent: Provenance
Id: ahd-signature-provenance
Title: "PET provenance"
Description: "Allkirjastamise provenance profiil, mille target on nii PET vorm (QuestionnaireResponse) kui ka Binary artifakt"
* ^url = "https://fhir.ee/ahd/StructureDefinition/ahd-signature-provenance"
* ^status = #draft
* ^version = "1.0.0"

* recorded 1..1

* target 2..*
* target ^slicing.discriminator[0].type = #profile
* target ^slicing.discriminator[0].path = "$this"
* target ^slicing.rules = #open
* target contains
    nativeContent 1..1 and
    signedArtifact 1..1

* target[nativeContent] only Reference(QuestionnaireResponse)
* target[nativeContent] ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-content"

* target[signedArtifact] only Reference(Binary)
* target[signedArtifact] ^type.targetProfile = "https://fhir.ee/ahd/StructureDefinition/ahd-signed-binary"


* agent 1..*
* agent.who 1..1
* agent.who only Reference(Patient or RelatedPerson or PractitionerRole)
* agent.who ^type.targetProfile[0] = "https://fhir.ee/ahd/StructureDefinition/ahd-patient"
* agent.who ^type.targetProfile[+] = "https://fhir.ee/ahd/StructureDefinition/ahd-witness"


