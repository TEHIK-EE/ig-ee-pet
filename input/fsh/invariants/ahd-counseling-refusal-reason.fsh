Invariant: ahd-counseling-reason
Description: "Kui valueBoolean=false, siis põhjus (note) peab olema esitatud. Kui valueBoolean = true, siis põhjendust vaja ei ole (kuid põhjenudsei ole ka keelatud sellel juhul)"
Severity: #error
Expression: "(value.ofType(boolean) = false implies note.exists())"
