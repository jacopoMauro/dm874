# Project Description

### Project
The aim of the project is to create a user matching application with authentication. The match application contains a couple of interesting parts, such as logic for the matching system and a database to store user generated data (matches, login credentials).

### Details
A user should be able to login, browse the system, filter other users on the system, chat with matches and ”like” other users. These interactions create interesting problems to solve, such as:

 - User should be Authenticated via token.
 - Using database for storing likes, chat message and matches.
 - Notifying a user when a mutual match has been recognized in the system.
 - Ability for a user to remove a match.
 - Ability for a user to delete his/her own profile in such a way that the system will still be functional.
 - Security for user generated and profile data.
 - Ability to communicate when the application is active between matches only.
 - Ability for user to upload (Jolie) code to interface with the whole system and develop code to, e.g., handle matches programmatically.

### Administration
The Administrator of the system should be able to:
 - Monitor and log the platform using a dashboard.
 - Delete any user profile.
 - Delete any likes or matches of a user.
 - Add new nodes in an easy way (may be automated).
 - Have the API documentation of the microservices and their behaviour.
 - Have a description of some user stories to explain to the user how the platform can be used to perform trivial tasks.
 - Set limits on the computation resources needed by the power users (i.e., those uploading their code to handle things in a programmatic way)

### Development
The developers of the system have to attend to:
 - Using continuous integration and deployment.
 - Infrastructure as a Code with an automatic DevOps pipeline
 - Scalability, supporting many users exploiting more resources in the cloud if needed.
 - Security (proper credential management and enforcing common standard security practices)
 - Write tests for the system (unit- and integration tests)
