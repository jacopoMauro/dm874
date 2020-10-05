The aim of this project is to build a system to evaluate student 
programming assignments (for an inspiration see for example
[AutoGradr](https://www.autogradr.com/) ).

Every programming assignment when submitted should
trigger its automatic evaluation that is performed by copying the program into
a docker container (/assignment folder) provided by the administrator.
The evaluator stores the result of the computation in a file /results.txt
(note that if this help developing the project, alternative ways to inject the
student assignment and get the results from the container can be negotiated with
the customer -aka the lecturer of this course). 

By using a programmatic RESTful API the user should be able to:
* login in to the system
* check the pending assignments
* submit a solution to an assignment
* check if the evaluation of an assignment has been done
* see the results of the assignment
* GUI support (optional for group with 6 people)

The administrator of the framework should be able to:
* monitoring and logging the platform using a dashboard
* add a public assignment (text + docker image to evaluate the assignment)
* add a private assignment submitting the list of users allowed to submit
  (text + docker image to evaluate the assignment + list of users)
* add or remove individual users or administrators to a private or public assignment
* given a student, check the status and the result of an assignment given 
  by the student
* remove an assignment and all the information connected
* remove a user
* limit the amount of time a docker containers can run to evaluate an assignment
  (if the timeout is reached this should be reported to the student instead of
  the results.txt output and recorded by the system)
* trigger the manual re-evaluation of an assignment
* test the sumbission of an assignment by providing an example of student
  submission and check the output and the logs
* given an assignment, extract in bulk all the student submissions 
  and their results
* GUI support (optional if the group is less than 7 people)

The developer of the systems has to:
* Use continuous integration and deployment
* Infrastructure as a Code with an automatic DevOps pipeline
* scalable, supporting multiple users exploiting if needed more resources in the
  cloud (note: an assignment validation requires a vCPU and therefore the number
  of vCPUs limits the number of parallel evaluation possible.  The evaluation 
  must be scheduled on first come first save basis )
* have tests to test the system (unit test, integration, ...)
* security (proper credential management and common standard security practices
  enforced, the evaluation of the docker must not tamper with the remaining
  part of the system since potentially the code of the students is non trusted),
* provide user stories to explain how the system is intended to be use
* provide minimal documentation to deploy and run the system


Notes:
* the possibility to deploy on multi-clouds and avoid vendor lock-in is a plus
* a proper team organization and team work management are a plus 



