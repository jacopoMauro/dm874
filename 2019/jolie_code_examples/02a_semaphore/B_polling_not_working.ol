// release does not correlate and therefore error message is given
// back to client
include "console.iol"
include "common.iol"
include "time.iol"

inputPort B {
Location: "socket://localhost:8000/"
Protocol: sodep
Interfaces: SemIface
}

execution {concurrent}

init
{
  global.i = 1
}

main
{
  getLock()(x) {
    x.id = new
    not_lock = True
    synchronized(mylabel) {
      if (global.i == 1) {
        global.i = 0
        not_lock = False
      }
    }
    while (not_lock) {
      sleep@Time( 1000 )( )
      synchronized(mylabel) {
        if (global.i == 1) {
          global.i = 0
          not_lock = False
        }
      }
    }
    println@Console( "Getting lock request" + x.id )(  )
  }
  releaseLock(y)
  while (x.id != y.id) {
    println@Console( "Receive realease with wrong id. Wait for the correct one" )(  )
    releaseLock(y)
  }
  synchronized(mylabel) {
    global.i = 1
  }
  println@Console( "Releasing lock request" + x.id )(  )
}
