include "database.iol"
include "console.iol"
include "string_utils.iol"

main {

  with( connectionInfo ) {
    .host = "";
    .driver = "sqlite";
    //.port = 5432;
    .database = "file:mydb.db";
    .username = "";
    .password = ""
  };
  connect@Database( connectionInfo )();

  q = "SELECT name FROM my_table WHERE surname=:surname";
  q.surname = "surname";
  query@Database( q )( result );

  valueToPrettyString@StringUtils( result )( s );
  println@Console( s )();

  q = "insert into my_table (name,surname) values (:name,:surname)";
  q.name = "second_name";
  q.surname = "surname";
  update@Database( q )( result );

  q = "select name from my_table where surname=:surname";
  q.surname = "surname";
  query@Database( q )( result );

  valueToPrettyString@StringUtils( result )( s );
  println@Console( s )()

}
