Invariant: ahd-counseling-reason
Description: "Kui valueBoolean=false, siis põhjus (component või note) peab olema esitatud. Kui valueBoolean = true, siis põhjendust vaja ei ole"
Severity: #error
Expression: "(valueBoolean = false implies (component.exists() or note.exists())) and (valueBoolean = true implies (component.empty() and note.empty()))"
