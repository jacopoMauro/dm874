include "calculator.iol"

execution { concurrent }

inputPort CalculatorInput {
Location: "local"
Interfaces: CalculatorIface
}

main
{
  sum( request )( request.x + request.y )
}
