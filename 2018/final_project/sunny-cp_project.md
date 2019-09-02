The aim of this project is to bring a legacy application
[sunny-cp](https://github.com/CP-Unibo/sunny-cp) into the cloud.

sunny-cp is a parallel portfolio solver that allows solving a
Constraint Problem (CP) defined in the MiniZinc language.
It was developed in python and can be deployed using a rudimentary Dockerfile.
[MiniZinc](http://www.minizinc.org/) is a free and open-source constraint
modeling language supported by many CP solvers.

In general, a user can use sunny-cp for performing the following tasks:
* solving CPs encoded in Minizinc using a combination of solvers 
* extracting from a CP a feature vector capturing with numbers the "nature of the problem"
* adding and creating a knowledgebase used to solve faster similar CPs in the
  future
* adding new constraint CP solver.

The goal of this project is to create a cloud ready-solution exposing the
functionalities of sunny-cp as a service. By using a programmatic RESTful API
the user should be able to:
* submit a mzn instance (CP problem instance)
* submit a dzn instance (CP data instance)
* trigger the execution of sunny-cp choosing its option (solvers, timeout, KB, ...)
* get the future vector of a mzn+dzn pair
* monitor the termination state of the sunny-cp execution
* retrieve the result of the computation when it is terminated
* delete mzn, dzn, and results

The user would also have with less priority the following functionalities:
* cancel the execution of sunny-cp
* update the KB
* create a new KB (run a set of benchmark with all the solvers + create the KB in the right format)
* GUI support (optional)

The administrator would like to:
* monitoring and logging the platform using a dashboard
* kill all process started by a user
* delete all files created by the user
* deploy the system and add new nodes in an easy way
* API documentation (and blogs on how users can execute some stories like
  solving a CP problem, get a feature vector, ...)
* security: CPs of one user are not visible to others

The developer of the systems would like to:
* use continuous integration and deployment
* Infrastructure as a Code. Automatic to set up the DevOps pipeline and the production environment.
* scalable, supporting multiple users exploiting if needed more resources in the
  cloud (note: vcpus allocated to a run depending on the parameter of sunny-cp)
* have tests to test the system (unit test, integration, ...)
* security (proper credential management and common standard security practices enforced)

