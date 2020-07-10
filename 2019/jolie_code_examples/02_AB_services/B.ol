include "console.iol"
include "common.iol"

inputPort B {
Location: "socket://localhost:8000/"
Protocol: sodep
Interfaces: SendNumberIface
}

main
{
  sendNumber( x );
  println@Console( x )()
}
