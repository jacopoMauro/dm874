include "file.iol"
include "cloud_server.iol"

execution { concurrent }

type RunRequest:void {
  .program:string
  .type:string
}

interface WebIface {
RequestResponse:
  getForm(void)(string),
  runCode(RunRequest)(string)
}

embedded {
Jolie:
  "cloud_server.ol"
}

inputPort WebInput {
	Location: "socket://localhost:9000/"
	Protocol: http { .format = "html" }
	Interfaces: WebIface
}

main
{
  [ getForm( request )( response ) {
    readFile@File( { .filename = "form.html" } )( response )
  } ]

  [ runCode( request )( output ) {
    run@CloudServer( request )( output )
  } ]
}
