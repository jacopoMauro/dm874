The aim of this project is to develop the "Kubernetes of Jolie services".

The goal is to create a platform that allow to deploy and orchestrate Jolie
stateless services smoothly on the cloud. The framework should offer a RESTful
API to offer its functionalities to administrators and users.

It is possible to assume that the Jolie services are stateless (if a state in
needed developers can use an external database/file system). Jolie services are
provided with a manifest that list the ports and operations that they offer. The
group has to design this template that the developers of the service should fill
to allow the service deployment in the framework.

The Jolie services to be deploy can assume to have an output port to reach a
service discovery system like Consul that the framework needs to offer (you have
to find a way to allow the setting of the location of the service discovery
output port when deploying the Jolie service).

The user should be able to:
* deploy and run a Jolie service, possibly replicated and with a load balancer
  in front if needed
* undeploy a running Jolie service (with a given cool time)
* when a Jolie service is associated with cost annotations (VCPUs + Memory +
  Replication) guarantee its deployment only if the resources are available,
  otherwise fail
* use a service discovery mechanism to understand which services are deployed
  and what are their interfaces
* monitoring the status of his/her services
* allow the user to define a health check for the service and if it fails
  redeploy the same service destroying the previous one. Otherwise the framework
  should provide a default health check used to destroy the container/VM where
  the service is running if the health message does not get a response
  
The administrator would like to:
* monitoring and logging the platform using a dashboard
* understand what are the free resources left and if needed scale up the system
  adding more physical resources (nodes)
* move a service (deploy a new one and kill an old running version)
* kill all services started by a user
* deploy the system and add new nodes in an easy way
* API documentation (and blogs on how users can execute some stories like
  deploying a given microservice stystem, ...)
* security: users can not control services of other users, just use them if they
  advertise their ports and interfaces on the service discovery registry

The developer of the systems would like to:
* use continuous integration and deployment
* Infrastructre as a Code. Automatic to set up the DevOps pipeline and the
  production environment.
* scalable, supporting multiple users exploiting if needed more resources in the
  cloud
* have tests to test the system (unit test, integration, ...)
* security (proper credential management and common standard security practices
  enforced)

Note: Requirements of the capabilities of Jolie services to be deployed on the
framework can be discussed if this hinder the possibility to reach certain
user/administrator goals.

