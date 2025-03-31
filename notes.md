## How To Companies Ship Codes To Production

1 - Plan : Product Owner -> create story -> jira<br />
2 - Development : developers -> commit codes to git -> github (feadback)<br />
3 - Build and Package : Jenkins (or JUnit and Jaoco) -> store builds to Jforg Artifactory -> Deploy To Docker<br />
4 - Test : QA Testing, Regresion Testing, Performance Testing, User Acceptance Testing<br />