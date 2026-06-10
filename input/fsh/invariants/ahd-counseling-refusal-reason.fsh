Invariant: ahd-counseling-reason
Description: "Kui valueBoolean=false, siis põhjus (note) peab olema esitatud. Kui valueBoolean = true, siis põhjendust vaja ei ole"
Severity: #error
Expression: "(valueBoolean = false implies note.exists()) and (valueBoolean = true implies  note.empty())"
