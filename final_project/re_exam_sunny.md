The aim of this project is to bring a legacy application
[sunny-cp](https://github.com/CP-Unibo/sunny-cp) into the cloud
and build the microservice that allows to build the knowledgebase (KB)
of sunny-cp.

sunny-cp is a parallel portfolio solver that allows solving a
Constraint Problem (CP) defined in the MiniZinc language.
It was developed in python and can be deployed using a rudimentary Dockerfile.
[MiniZinc](http://www.minizinc.org/) is a free and open-source constraint
modeling language supported by many CP solvers.

To understand what solver to run to solve the CP, sunny-cp exploits a KB that is
created by listing the performances of its solver against a given list of
MiniZinc instances. To understand how the KB is structured and see the python
utilities to create it please have a look at
[https://github.com/CP-Unibo/sunny-cp/tree/master/kb](https://github.com/CP-Unibo/sunny-cp/tree/master/kb).

In general, a user can use sunny-cp for performing the following tasks:
* solving CPs encoded in Minizinc using a combination of solvers 
* extracting from a CP a feature vector capturing with numbers the "nature of the problem"
* adding and creating a knowledgebase used to solve faster similar CPs in the
  future
* adding new constraint CP solver.

The goal of this project is to create a cloud ready-solution on Kubernetes,
exposing the functionalities of sunny-cp as a service and create a microservice
that by invoking multiple instances of sunny-cp is able to build its KB given a
list of MiniZinc instances. For every instance i submitted, for all solvers s
supported by sunny-cp, sunny-cp should be run on instance i with solver s and
the result processed to extract the information needed to build the KB. Two
executions of sunny-cp should not run in parallel on the same node.  

By using a programmatic RESTful API the user should be able to:
* submit the mzn + dzn list of instances to trigger the building of the KB
* check if the process of the building of the KB is done or how many executions
  are still missing
* get the KB if it is ready
* cancel the building process

The administrator would like to:
* monitoring and logging the platform of Kubernetes using a dashboard
* deploy the system and add new nodes in an easy way

The developer of the systems would like to:
* use continuous integration and deployment
* Infrastructure as a Code. Automatic to set up the DevOps pipeline and the production environment.
* scalable, supporting multiple users exploiting if needed more resources in the
  cloud
* have tests to test the system (unit test)

At the end of the project the student has to write a project report following
the guidelines as specified in the Project Report at
[https://github.com/jacopoMauro/dm848/blob/master/final_project_guidelines.md](https://github.com/jacopoMauro/dm848/blob/master/final_project_guidelines.md).
