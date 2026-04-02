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


* item[0].linkId = "ahd-indication"
* item[=].answer[0].valueCoding.display = "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik"


* item[=].answer[0].item[0].linkId = "ahd-indication.first-choice"
* item[=].answer[0].item[0].answer[0].valueCoding.display = "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud"

* item[=].answer[0].item[0].answer[0].item[0].linkId = "ahd-indication.first-choice.unacceptable-condition"
* item[=].answer[0].item[0].answer[0].item[0].answer[0].valueCoding.display = "ma jään püsivalt teadvusetusse seisundisse ehk koomasse"
* item[=].answer[0].item[0].answer[0].item[0].answer[1].valueCoding.display = "minu vaimne võimekus halveneb pöördumatult, nii et ma ei ole suuteline oma seisundist aru saama, otsuseid tegema ega inimestega suhtlema"
* item[=].answer[0].item[0].answer[0].item[0].answer[2].valueCoding.display = "ma sõltun igapäevatoimingutes (nt söömine, joomine, enesehooldus, riietumine jm) täielikult teistest inimestest"
* item[=].answer[0].item[0].answer[0].item[0].answer[3].valueCoding.display = "Muu … [vaba tekst]"

* item[=].answer[0].item[0].answer[0].item[0].answer[3].item[0].linkId = "ahd-indication.first-choice.unacceptable-condition.other"
* item[=].answer[0].item[0].answer[0].item[0].answer[3].item[0].answer[0].valueString = "Kui ma ei suuda enam oma lähedasi ära tunda ega nendega suhelda."

* item[=].answer[0].item[0].answer[0].item[1].linkId = "ahd-indication.first-choice.unacceptable-treatments"
* item[=].answer[0].item[0].answer[0].item[1].answer[0].valueCoding.display = "Elustamine kliinilisest surmast"
* item[=].answer[0].item[0].answer[0].item[1].answer[1].valueCoding.display = "Hingamisaparaadi kasutamine"
* item[=].answer[0].item[0].answer[0].item[1].answer[2].valueCoding.display = "Neeruasendusravi ehk dialüüs"
* item[=].answer[0].item[0].answer[0].item[1].answer[3].valueCoding.display = "Kunstlik toitmine ja kunstlik vedeliku manustamine"

* item[1].linkId = "palliative-treatment"
* item[=].answer[0].valueCoding.display = "ei soovi selliseid sekkumisi [kirjelda ise]"

* item[=].answer[0].item[0].linkId = "palliative-treatment.treatments"
* item[=].answer[0].item[0].answer[0].valueString = "Soovin vältida tugevat sedatsiooni ja valuravi"

* item[2].linkId = "preferred-death-location"
* item[=].answer[0].valueCoding.display = "mujal: [vaba tekst] "

* item[=].answer[0].item[0].linkId = "preferred-death-location.other"
* item[=].answer[0].item[0].answer[0].valueString = "Hospiitsis või hooldekodus, kus lähedased saavad külastada."

* item[3].linkId = "people-by-side-death"
* item[=].answer[0].valueString = "Mari Maasikas (abikaasa), tel +372 5xxxxxxx; Pauliine Jänes (tütar), tel +372 5xxxxxxx."

* item[4].linkId = "religious-preferences"
* item[=].answer[0].valueString = "Soovin, et vajadusel kutsutaks vaimulik (luteri)."

* item[5].linkId = "other-wishes"
* item[=].answer[0].valueString = "Viimne puhkepaik peaks olema Garda järv"