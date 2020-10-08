# Programmable social network

The aim of this project is to build a social website to share photos, tag them
and comment under them. Differently to a normal social network, however, users
can upload user scripts in their preferred choice of programming language (e.g.,
python, java, …) that can automate some tasks that the user can do. Scripts are
initialized when uploaded and use hooks to run on specific events. Execution
time for initialization and hooks is limited.

## User
- Can login/logout to account
- Can upload photos
- Can create posts from uploaded photos
- Can delete own posts
- Send messages to other users (optional)
- Can like and dislike photos
- Place comments under posts
- Can delete own comments
- Can reply to comments
- Can tag other users in comments
- Can report posts and comments
- GUI support / access website
- Can upload user scripts & test them
- Can add tags to own posts
- Can write Tag scripts. Tag scripts will automate the tagging for images that are logically connected (.e.g, Tag “Cheeseburger” implies Tag “Food”) and will be written in Prolog (optional).

## Administrator
- Everything a user can
- Can add Tags to any posts
- Delete comments and posts
- Receive reports from users
- Temp-ban users for a limited time
- Flag users
- GUI support / access website
- Delete / ban accounts
- View flagged users
- View deleted posts
- Purge post
- GUI support / access website
- Set limits on resource consumption (e.g., time, vCPUs, RAM) on user scripts and tag scripts

## Management console  (IAM)
- Everything an admin can
- Manage advertising
- Promote / Demote Administrators

## Developer
- Use continuous integration and deployment
- Infrastructure as a Code with an automatic DevOps pipeline
- Have tests to test the system (unit test, integration, ...)
- Scalable, supporting multiple users exploiting if needed more resources in the cloud
- Security (proper credential management and common standard security practices enforced),
- Provide user stories to explain how the system is intended to be use
- Provide minimal documentation to deploy and run the system

## Notes
- the possibility to deploy on multi-clouds and avoid vendor lock-in is a plus
- a proper team organization and team work management are a plus
