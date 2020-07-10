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
  [getLock()(x) {
    x.id = new
    not_lock = True
    while (not_lock) {
      synchronized(mylabel) {
        if (global.i == 1) {
          global.i = 0
          global.id = x.id
          not_lock = False
        }
      }
      if (not_lock){
        sleep@Time( 1000 )( )
      }
    }
  }]{ println@Console( "Getting lock request" + x.id )(  ) }
  [releaseLock(y)]{
    synchronized(mylabel) {
      if (y.id == global.id) {
        global.i = 1
      }
    }
    println@Console( "Releasing lock request" + x.id )(  )
  }
}
