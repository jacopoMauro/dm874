type TokenType {
  id : string
}

interface SemIface {
  OneWay:
    releaseLock(TokenType)
  RequestResponse:
    getLock( void )( TokenType )
}
