import jolie.runtime.JavaService;
import jolie.runtime.Value;

public class Calculator extends JavaService
{
	// RequestResponse: doubleInt( int )( int )
	public Integer doubleInt( Integer i )
	{
		return i * 2;
	}
	
	public Integer sum( Value request )
	{
		return
			request.getFirstChild( "x" ).intValue()
			+
			request.getFirstChild( "y" ).intValue();
	}
}
