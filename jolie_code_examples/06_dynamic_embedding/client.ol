include "cloud_server.iol"
include "file.iol"
include "time.iol"
include "console.iol"

main
{
  readFile@File( { .filename = "brilliantPrint.ol" } )( program );
  load@CloudServer( {
    .type = "Jolie",
    .program = program
  } )( token );
  load@CloudServer( {
    .type = "Javascript",
    .program = "
      print( \" Hello \" );
    "
  } )()
  // println@Console( token )();
  // sleep@Time( 3000 )();
  // unload@CloudServer( token )()
}
