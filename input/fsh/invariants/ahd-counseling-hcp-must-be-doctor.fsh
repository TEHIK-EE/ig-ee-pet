Invariant: ahd-counselor-must-be-doctor
Description: "Nõustamist teostav tervishoiu töötaja peab olema arst. PractitionerRole.identifier.valuepeab algama väärtusega 'D'."
Severity: #error
Expression: "identifier.exists() and identifier.value.exists() and identifier.value.matches('^D.*')"