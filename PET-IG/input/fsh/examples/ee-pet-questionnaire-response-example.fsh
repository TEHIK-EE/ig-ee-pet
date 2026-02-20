
Instance: PETQuestionnaireResponseExample
InstanceOf: PETQuestionnaireResponse
Usage: #example
Description: "Näidis vastus patsiendi elulõpu tahteavaldusele (PET)"


* status = #completed
* questionnaire = "https://fhir.ee/qre/Questionnaire-PET"
* authored = "2026-02-19T10:30:00+02:00"
* subject = Reference(PatientExample)
* author = Reference(PatientExample)
* language = #et

* item[0].linkId = "pet-indication"
* item[=].answer[0].valueCoding.display = "Kui mu terviseseisund on selline, et mulle vastuvõetava elukvaliteedi saavutamine minu elu säilitamisega ei ole võimalik"

* item[=].item[0].linkId = "pet-indication.first-choice"
* item[=].item[=].answer[0].valueCoding.display = "ei soovi ma neid elu säilitavaid sekkumisi, mille olen ära märkinud"

* item[=].item[=].item[0].linkId = "pet-indication.first-choice.unacceptable-condition"
* item[=].item[=].item[=].answer[0].valueCoding.display = "Olen püsivalt teadvusetus seisundis."
* item[=].item[=].item[=].answer[+].valueCoding.display = "Minu vaimne võimekus on pöördumatult halvenenud nii, et ma ei ole suuteline aru saama, otsuseid tegema ega inimestega suhtlema."
* item[=].item[=].item[=].answer[+].valueCoding.display = "Olen igapäevastes toimingutes (nt söömine, joomine, hügieenitoimingud, riietumine jne) täielikult teistest sõltuv."
* item[=].item[=].item[=].answer[+].valueCoding.display = "Muu…[vaba tekst]"

* item[=].item[=].item[=].item[0].linkId = "pet-indication.first-choice.unacceptable-condition.other"
* item[=].item[=].item[=].item[=].answer[0].valueString = "Kui ma ei suuda enam oma lähedasi ära tunda ega nendega suhelda."

* item[=].item[=].item[+].linkId = "pet-indication.first-choice.unacceptable-treatments"
* item[=].item[=].item[=].answer[0].valueCoding.display = "Elustamine kliinilisest surmast"
* item[=].item[=].item[=].answer[+].valueCoding.display = "Hingamisaparaadi kasutamine"
* item[=].item[=].item[=].answer[+].valueCoding.display = "Neeruasendusravi ehk dialüüs"
* item[=].item[=].item[=].answer[+].valueCoding.display = "Kunstlik vedeliku manustamine ja toitmine"
* item[=].item[=].item[=].answer[+].valueCoding.display = "Muu: …[vaba tekst]"

* item[=].item[=].item[=].item[0].linkId = "pet-indication.first-choice.unacceptable-treatments.other"
* item[=].item[=].item[=].item[=].answer[0].valueString = "Loobun onkoloogilisest ravist"


* item[+].linkId = "palliative-treatment"
* item[=].answer[0].valueCoding.display = "Soovin palliatiivse ravi puhul vältida:....[vaba tekst]"

* item[=].item[0].linkId = "palliative-treatment.treatments"
* item[=].item[=].answer[0].valueString = "Soovin vältida tugevat sedatsiooni ja valuravi"


* item[+].linkId = "preferred-death-location"
* item[=].answer[0].valueCoding.display = "Mujal"

* item[=].item[0].linkId = "preferred-death-location.other"
* item[=].item[=].answer[0].valueString = "Hospiitsis või hooldekodus, kus lähedased saavad külastada."

* item[+].linkId = "people-by-side-death"
* item[=].answer[0].valueString = "Mari Maasikas (abikaasa), tel +372 5xxxxxxx; Pauliine Jänes (tütar), tel +372 5xxxxxxx."

* item[+].linkId = "religious-preferences"
* item[=].answer[0].valueString = "Soovin, et vajadusel kutsutaks vaimulik (luteri)."

* item[+].linkId = "other-wishes"
* item[=].answer[0].valueString = "Viimne puhkepaik peaks olema Garda järv"
