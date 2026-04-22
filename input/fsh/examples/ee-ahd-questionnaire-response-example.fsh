Instance: AHDQuestionnaireResponseExample
InstanceOf: AHDQuestionnaireResponse
Usage: #example
Description: "Näidis vastus patsiendi elulõpu tahteavaldusele (PET)"

* status = #completed
* questionnaire = "https://fhir.ee/qre/Questionnaire-AHD"
* authored = "2026-02-19T10:30:00+02:00"
* subject = Reference(AHDPatientExample)
* author = Reference(AHDPatientExample)
* language = #et

* extension[signedDigitally].valueBoolean = true
* extension[witness].valueReference = Reference(AHDWitnessExample)
* extension[createdDigitally].valueBoolean = true


* item[0].linkId = "pet-indication-first"
* item[=].text = "Elu säilitamisest keeldumine, kui selle tulemus on sulle vastuvõetamatu"


* item[=].item[0].linkId = "pet-indication-first.unacceptable-treatment"
* item[=].item[=].answer[0].valueCoding.display = "ei soovi ma järgmisi elu säilitavaid sekkumisi"

* item[=].item[=].item[0].linkId = "pet-indication-first.unacceptable-treatment.list"
* item[=].item[=].item[=].answer[0].valueCoding.display = "Elustamine kliinilisest surmast"
* item[=].item[=].item[=].answer[1].valueCoding.display = "Hingamisaparaadi kasutamine"
* item[=].item[=].item[=].answer[2].valueCoding.display = "Neeruasendusravi ehk dialüüs"
* item[=].item[=].item[=].answer[3].valueCoding.display = "Kunstlik toitmine ja kunstlik vedeliku manustamine"


* item[=].item[+].linkId = "pet-indication-first.unacceptable-condition"
* item[=].item[=].answer[0].valueCoding.display = "ma jään püsivalt teadvusetusse seisundisse ehk koomasse"
* item[=].item[=].answer[1].valueCoding.display = "minu vaimne võimekus halveneb pöördumatult, nii et ma ei ole suuteline oma seisundist aru saama, otsuseid tegema ega inimestega suhtlema"
* item[=].item[=].answer[2].valueCoding.display = "ma sõltun igapäevatoimingutes (nt söömine, joomine, enesehooldus, riietumine jm) täielikult teistest inimestest"
* item[=].item[=].answer[3].valueCoding.display = "muu"

* item[=].item[=].item[0].linkId = "pet-indication-first.unacceptable-condition.other"
* item[=].item[=].item[=].answer[0].valueString = "Kui ma ei suuda enam oma lähedasi ära tunda ega nendega suhelda."

* item[=].item[+].linkId = "pet-indication-first.other"
* item[=].item[=].answer[0].valueString = "Kui olen soovimatu seisundi korral koduses keskkonnas, siis ei soovi kiirabiga transporti haiglasse"

* item[+].linkId = "palliative-treatment"
* item[=].answer[0].valueCoding.display = "ei soovi selliseid sekkumisi [kirjelda ise]"

* item[=].item[0].linkId = "palliative-treatment.treatments"
* item[=].item[=].answer[0].valueString = "Soovin vältida tugevat sedatsiooni ja valuravi"

* item[+].linkId = "preferred-death-location"
* item[=].answer[0].valueCoding.display = "muu"

* item[=].item[0].linkId = "preferred-death-location.other"
* item[=].item[=].answer[0].valueString = "Hospiitsis või hooldekodus, kus lähedased saavad külastada."

* item[+].linkId = "people-by-side-death"
* item[=].answer[0].valueString = "Mari Maasikas (abikaasa), tel +372 5xxxxxxx; Pauliine Jänes (tütar), tel +372 5xxxxxxx."

* item[+].linkId = "religious-preferences"
* item[=].answer[0].valueString = "Soovin, et vajadusel kutsutaks vaimulik (luteri)."

* item[+].linkId = "other-wishes"
* item[=].answer[0].valueString = "Viimne puhkepaik peaks olema Garda järv"