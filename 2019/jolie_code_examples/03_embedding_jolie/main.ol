include "calculator.iol"
include "console.iol"

outputPort Calculator {
Interfaces: CalculatorIface
}

embedded {
Jolie:
  "calculator.ol" in Calculator
}

main
{
  sum@Calculator( { .x = 2, .y = 5 } )( result );
  println@Console( result )()
}
