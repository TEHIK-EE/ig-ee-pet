Profile: PETQuestionnaireResponse
Parent: QuestionnaireResponse
Id: pet-content
Description: "Patsiendi elulõpu tahteavalduse sisu"
* ^version = "1.0.0"
* ^status = #draft
* ^date = "2024-01-01"
* meta.profile 1..1
* questionnaire 1..1
* language 1..1
* status 1..1
* basedOn 0..0
* partOf 0..0
* subject 1..1
* subject only Reference(Patient)
* subject ^type.targetProfile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
* encounter 0..0
* modifierExtension 0..0
* contained 0..0
* implicitRules 0..0
//* text 0..0
* author 1..1
* author only Reference(Patient or PractitionerRole)
* author ^type.targetProfile = "https://fhir.ee/mpi/StructureDefinition/ee-mpi-patient-verified"
* item 0..*
  * id 0..0
  * linkId 1..1
  * definition 0..0
  * text 0..1
  * extension 0..0
  * modifierExtension 0..0
  * answer 0..*
    * id 0..0
    * extension 0..0
    * modifierExtension 0..0
    * value[x] 1..1
    * item 0..*
  * item 0..*
