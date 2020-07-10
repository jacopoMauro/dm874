include "cloud_server.iol"
include "file.iol"
include "time.iol"
include "console.iol"


main
{

  run@CloudServer( {
    .type = "JavaScript",
    .program = "
      print( \" Hello \" );
    "
  } )( result );
  println@Console( "Javascript executed. Output: " + result )(); 

  println@Console( "Run Jolie Program. Type in browser http://localhost:8080/currentTime" )();
  readFile@File( { .filename = "brilliantPrint.ol" } )( program );
  run@CloudServer( {
    .type = "Jolie",
    .program = program
  } )( result )
}
