include "calculator.iol"
include "console.iol"

outputPort Calculator {
Interfaces: CalculatorIface
}

embedded {
JavaScript:
  "calculator.js" in Calculator
}

main
{
  sum@Calculator( { .x = 2, .y = 5 } )( result );
  println@Console( result )()
}
