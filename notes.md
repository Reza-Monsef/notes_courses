## How To Companies Ship Codes To Production


1 - The Product Owner starts the entire process by creating user stories in a tool like Jira.

2 - The Developer Team performs Sprint Planning activity and adds the user stories to the sprint.

3 - Developers work on the assigned stories. Once a story is finished, they commit the code to Git and push it to GitHub.

4 - Jenkins builds and runs the code through testing and quality check tools such as JUnit, Jacoco, and SonarQube.

5 - If the build is successful, it is stored in the artifactory such as JFrog. Jenkins also deploys the build to the Dev Environment via Docker.

6 - Next up, the feature gets deployed to the QA environment. Since multiple teams may be working on the same code base, multiple QA environments will be created

7 - The QA team uses a particular QA environment and runs multiple test types such as QA, regression, and performance.

8 - Once the QA verification is complete, features are deployed to the UAT (User Acceptance Testing) environment.

9 - UAT testing verifies whether the feature satisfies the user’s requirements.

10 - Once the UAT testing is successful, the builds become release candidates. They are deployed to the production environment based on a specific schedule. 

11 - The SRE team uses tools like ELK and Prometheus to monitor the production environment and handle alerts in case of issues. 
