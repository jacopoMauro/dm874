include "runtime.iol"
include "file.iol"
include "cloud_server_iface.iol"
include "console.iol"
include "time.iol"

constants {
  TIMEOUT = 2000
}

inputPort LocalInput {
Location: "local"
Interfaces: CloudServerIface
}

inputPort CloudServer {
Location: "socket://localhost:8000/"
Protocol: sodep
Interfaces: CloudServerIface
}

execution { sequential }

init
{
  deleteDir@File( "tmp" )();
  mkdir@File( "tmp" )()
}

main
{
  [ load( request )( token ) {
    filename = "tmp/" + new;
    if ( request.type == "Jolie" ) {
      filename += ".ol"
    } else if ( request.type == "JavaScript" ) {
      filename += ".js"
    };
    writeFile@File( {
      .content = request.program,
      .filename = filename
    } )();
    install( RuntimeException =>
      println@Console( main.RuntimeException.stackTrace )()
    );
    loadEmbeddedService@Runtime( {
      .type = request.type,
      .filepath = filename
    } )( location );
    token = new;
    global.map.(token) = location;
    setNextTimeout@Time( TIMEOUT {
      .operation = "unload",
      .message = token
    } )
  } ]

  [ unload( token )() {
    println@Console( global.map.(token) )();
    callExit@Runtime( global.map.(token) )()
  } ]
}
