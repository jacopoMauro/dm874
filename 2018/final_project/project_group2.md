The aim of this project is to bring the application ALEX123 into the cloud.

Alex123 is a lipidomics analysis tool, that is developed in java, python and sas
and is normally deployed locally on the users machine. In layman’s terms, the
main machinery of the program does the following: given a raw datafile that
contains some measurements of a sample, and a list of molecules the user
believes was present in that sample, it outputs the amount of each of the
molecules in the list that was present. A complete run of an analysis involves
multiple steps, and currently often takes around 45 minutes to one hour, where
each step is initiated manually.

Currently, there is already a web interface that is currently deployed to
alex123.sdu.dk where the user can search for molecules in the database. The
database is usually only updated a few times a year.

The goal of the project is to expose the functionally of the tool in a web
interface where the user can submit jobs, monitor them, and download/review the
results. The user interface should possibly be password protected so users need
to be approved to login.

In short the user should be able to do the following:
* Look up one or more molecules/lipids using either MS1, MS2 or MS3
* Submit an analysis task by, uploading a raw datafile and selecting one or more
  molecules/lipids from the database to search for in that data.
* See the status or results of a previously submitted analysis task. A result
  basically says, “of those molecules you searched for, these were found in x
  amounts”.
* create a flexible solution to control what data needs to be kept and deleted
  (e.g., recent data kept in memory, old data deleted or stored)
  
The Admin should be able to:
* Monitor and logging the services, CPU, mem, queue, storage. and overview over
  workload in the past x hours/days
* Add/remove users from the services
* Change user permissions
* Review users jobs
* Stop users jobs
* API documentation (and blogs on how users can execute some stories like
  deploying, ...)
* Add or remove easily nodes (scaling can happen based on the number of jobs)

The developer should be able to:
* use continuous integration and deployment
* Infrastructure as a Code. Automatic to set up the DevOps pipeline and the
  production environment.
* scalable, supporting multiple users exploiting if needed more resources in the cloud
* have tests to test the system (unit test, integration, ...)
* security (proper credential management and common standard security practices
  enforced)

Low priority user
* Make a nice UI

Low priority Developer
* Tool to import new and correct data via a web interface.

