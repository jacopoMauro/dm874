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
* adding and creating a knowledgebase (KB) used to solve faster similar CPs in the
  future
* adding new constraint CP solver.

The goal of this project is to create a cloud ready-solution exposing the
functionalities of sunny-cp as a service.

By using a programmatic RESTful API the user should be able to:
* submit a mzn instance (CP problem instance)
* submit a dzn instance (CP data instance)
* trigger the execution of sunny-cp choosing its option
  (solvers, timeout, KB, ...) and selecting also how many vCPUs and Memory to
  assign to the execution of the solver
* get the future vector of a mzn+dzn pair
* monitor the termination state of the sunny-cp execution
* retrieve the result of the computation when it is terminated
* delete mzn, dzn, and results
* cancel the execution of a sunny-cp run
* update the KB
* submit in bulk a set of instances to be solved and run sunny-cp over these
  instances with a given set of parameters
* GUI support (optional)

The administrator of the framework should be able to:
* monitoring and logging the platform using a dashboard
* kill all sunny-cp executions started by a user
* delete all files created by the user
* deploy the system and add new nodes in an easy way (e.g., running a script
  with some configuration paramters)
* API documentation (and user stories, e.g., on how users can 
  solve a CP problem, get a feature vector, ...)
* security: CPs of one user are not visible to others, one user can not stop the
  execution of another
* fairness: if the resources do not allow to run all the solvers at the same time
  the jobs should be delayed and executed fairly. User should therefore not wait
  indefinetly to run their jobs (optional). 

The developer of the systems have to:
* Use continuous integration and deployment
* Infrastructure as a Code with an automatic DevOps pipeline
* scalable, supporting multiple users exploiting if needed more resources in the
  cloud (note: vcpus allocated to a run depending on the parameter of sunny-cp)
* have tests to test the system (unit test, integration, ...)
* security (proper credential management and common standard security practices enforced)



