# Project description
This project is all about bringing the idea of a programatically automatable chat application for regular and power users alike, into a microservice & cloud native environment.
We want to provide a service to the users that allows them a more flexible chat application than what is currently present, but less formal than the traditional email.
The service should also appeal to power users where the ability to configure automated functionality is encouraged.
This problem needs to be solved in a way that leaves services (almost) stateless and fault tolerant.
In this project we will be including various tools and techniques from DevOps, which will follow up to the next sections.


## A user of the system should be able to
* Receive messages live
* Change username and password
* Be greeted with a feature-rich, intuitive GUI to interact with the service
* Send messages to other users, which are delivered instantly
* Have my messages and logs to be secure so a third party cannot read private messages
* Configure an auto-response so that trivial responses are left to the service
* Filter out words so that he/she does not have to read inappropriate language.
* Want the power to modify messages dynamically through code snippets, so that I can automate message transformations (power user).

## The administrator of the services should be able to
* Monitor and log the platform using a dashboard
* Ban users
* Deploy, update, and scale the individual microservices and the nodes
* Set limits on the computation resources needed by the power users
* Have the API documentation of the microservices and their behaviour
* Have a description of some user stories to explain to the user how the platform can be used to perform trivial tasks.

## The developers of the systems have to
* Use continuous integration and deployment 
* Employ the "infrastructure as a Code" principle
* Work with an automatic DevOps pipeline
* Write the microservices in such a way that they are scalable and stateless
* Write tests for the system (unit- and integration tests)
* Use secure techniques by employing secrets and credentials management

## Security
* Users should have their credentials checked when attempting to perform any critical action
* The users should only be able to connect through https
* Users should have their passwords hashed and salted
