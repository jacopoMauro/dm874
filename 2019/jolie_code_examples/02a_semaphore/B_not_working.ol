include "console.iol"
include "common.iol"

inputPort B {
Location: "socket://localhost:8000/"
Protocol: sodep
Interfaces: SemIface
}

execution {single}
main
{
  while (true) {
    getLock()(x) {
      x.id = new
      println@Console( "Getting lock request" + x.id )(  )
    }
    releaseLock(y)
    while (x.id != y.id) {
      println@Console( "Receive realse with wrong id. Wait for the correct one" )(  )
      releaseLock(y)
    }
    println@Console( "Releasing lock request" + x.id )(  )
  }
}
