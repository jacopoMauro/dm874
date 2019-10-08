include "common.iol"
include "console.iol"
include "time.iol"

outputPort B {
  location: "socket://localhost:8000/"
  protocol: sodep
  interfaces: SemIface
}

main
{
  {
    getLock@B( )(x)
    println@Console( "Get lock" + x.id )(  )
    sleep@Time( 5000 )( )
    println@Console( "Releasing lock" + x.id )(  )
    releaseLock@B(x)
    println@Console( "Done " + x.id )(  )
  }
  |
  {
    getLock@B( )(y)
    println@Console( "Get lock" + y.id )(  )
    sleep@Time( 5000 )( )
    println@Console( "Releasing lock" + y.id )(  )
    releaseLock@B(y)
    println@Console( "Done " + y.id )(  )

  }
}
