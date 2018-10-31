include "console.iol"
include "time.iol"

execution { sequential }

interface MyIface {
RequestResponse:
  currentTime(void)(undefined)
}

inputPort MyInput {
Location: "socket://localhost:8080/"
Protocol: http
Interfaces: MyIface
}

main
{
  [ currentTime()( response ) {
    getCurrentDateTime@Time()( response )
  } ]
}
