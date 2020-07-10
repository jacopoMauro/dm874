include "common.iol"

outputPort B {
Location: "socket://localhost:8000/"
Protocol: sodep
Interfaces: SendNumberIface
}

main
{
  sendNumber@B( 5 )
}
