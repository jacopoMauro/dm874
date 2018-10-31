Let us try to use SQLite (install package sqlite).
To create and populate the database run the following commands

'''
sqlite mydb.db

CREATE TABLE my_table (
 id integer PRIMARY KEY,
 name text NOT NULL,
 surname text NOT NULL
);

INSERT INTO my_table (name,surname) VALUES ('name','surname');

SELECT name, surname FROM my_table ORDER BY surname DESC;

.exit
'''


Note that the Database service uses JDBC, so you need the correct driver JAR
placed in the lib subdirectory (the one of the program or the global one, e.g.,
/usr/lib/jolie/lib/ in Linux).

Attention: if your JAR driver is called differently, you will have to rename it
or create an apposite link, otherwise Jolie is not able to load it. The list of
correct names for JAR drivers is given below.

SQLite --> jdbc-sqlite.jar
