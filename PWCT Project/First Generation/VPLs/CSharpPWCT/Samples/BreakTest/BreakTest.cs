using System ;
public class BreakTest
{
	public static void Main ( string[] args )
	{
		int count ;
		for ( count = 1 ; count <= 10 ; count++ )
		{
			if ( count == 5 )
			{
				break ;
			}
			Console.WriteLine( "{0} ",count );
		}
		Console.WriteLine( "\nBroke out of loop at count = {0}", count );
		string wait ;
		wait = Console.ReadLine() ;
	}
}


