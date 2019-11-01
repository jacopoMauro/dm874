# Project description.
 
Setup a mini "Security Analytic Center", where users can send in logs to be analysed.
The users can apply code written by themselfs to specify how the log should be analysed.
The system will trigger alarms if the system observes the specified patterns. Patterns are defined by the user code and optionally some default rules.
 
In general, a user can use this system for performing the following tasks:

* Login to a web interface
* Send logs to the system
* Through the interface submit code to analyse the logs
* Delete old code
* Be able to check raised alarms and information by a web interface
* Examine the logs that triggered alarms
* Examine all stored logs from the user
* Configure which log-types go to which analysing pieces of code
* Choose subscription for cpu/memory
* With certain permissions, delete logs

The administrator of the framework should be able to:

* Monitor and log usage of the platform using a web interface
* Be able to search in the log database
* Can update and control default rules to analyse logs.
* Update a customer's access, including control of computing instance usage (e.g., shutting them down)
* Should have user stories and API documentation for the system.

The developers of the systems have to:
 
* Use continuous integration and deployment
* Infrastructure as a Code with an automatic DevOps pipeline
* Produce a scalable system
* Have tests to test the system (unit test, integration, ...)
* Security (proper credential management and common standard security practices enforced)
