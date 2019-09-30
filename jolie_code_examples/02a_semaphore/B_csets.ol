include "console.iol"
include "common.iol"
include "semaphore_utils.iol"

inputPort B {
Location: "socket://localhost:8000/"
Protocol: sodep
Interfaces: SemIface
}

execution {concurrent}

cset {
  sid: TokenType.id
}

init {
  global.mysemaphore.name = "mysemaphore"
  global.mysemaphore.permits = 1
  release@SemaphoreUtils( global.mysemaphore )()
}


main
{
  getLock()(x) {
    x.id = new
    csets.sid = x.id
    println@Console( "Getting lock request" + x.id )(  )
    acquire@SemaphoreUtils( global.mysemaphore )()
  }
  releaseLock(x)
  release@SemaphoreUtils( global.mysemaphore )()
  println@Console( "Realising lock request" + x.id )(  )
}
