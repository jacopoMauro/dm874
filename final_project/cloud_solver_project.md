The aim of this project is to create a system that is able to solve Constraint
Programming (CP) problems in the cloud.

The CP problems are expected to be defined in the
[MiniZinc language](http://www.minizinc.org/).

For both these kind of problems there are plenty of solver available with
different performance (see for instance the solver used in the
[MiniZinc challenge](https://www.minizinc.org/challenge.html)).
It is possible to assume that the solvers, the input and the output
satisfy the
[rules of the challenge](https://www.minizinc.org/challenge2020/rules2020.html)

In general, a user/admin of the system should perform the following tasks:
* find out what are the solvers available for CP problems
* solving CPs problem encoded in Minizinc
* adding new constraint CP solver.

The goal of this project is to create a cloud ready-solution to solve
combinatorial problems.

By using a programmatic RESTful API the user should be able to:
* submit a mzn instance (CP problem instance)
* submit a dzn instance (CP data instance)
* find out the CP solvers supported and their configuration options supported
  (e.g., free search, return all solutions, ...) 
* trigger the execution of a solver for loaded mzn and dzn
  choosing the solver options + timeout,
  maximal amount of memory that can be used, vCPUs to use
* trigger the execution in parallel of more solver terminating the others
  when the quickest solver terminates
* monitor the termination state of the solver execution
* retrieve the result of the computation when it is terminated
* for every solution of a problem (marked in the output with **********)
  retrieve how long it took it to be found. Adding this information should not
  have a big impact on the performances of the CP solvers
* delete mzn and dzn files, and the results
* cancel the execution of a solver or group of solvers
* submit in bulk a set of instances to be solved and run solvers over these
  instances with a given set of parameters
* GUI support (optional for group with 6 people)

The administrator of the framework should be able to:
* monitoring and logging the platform using a dashboard
* kill all solver executions started by a user
* delete all files created by the user
* deploy the system and add new nodes in an easy way (e.g., running a script
  with some configuration parameters)
* add or remove a new CP solver. It is possible to assume that the solver to add
  satisfy the rules of the MiniZinc challenge (note also that you have to handle
  the case when a users asks to use a removed solver)

The developer of the systems have to:
* Use continuous integration and deployment
* Infrastructure as a Code with an automatic DevOps pipeline
* scalable, supporting multiple users exploiting if needed more resources in the
  cloud (note: vcpus allocated to a run depending on the parameter of sunny-cp)
* have tests to test the system (unit test, integration, ...)
* security (proper credential management and common standard security practices
  enforced)
* provide user stories to explain how the system is intended to be use
* provide minimal documentation to deploy and run the system
* fairness: if the resources do not allow to run all the solvers at the same time
  the jobs should be delayed and executed fairly. User should therefore not wait
  indefinitely to run their jobs (optional).
  
Notes:
* the possibility to deploy on multi-clouds and avoid vendor lock-in is a plus
* a proper team organization and team work management are a plus 






