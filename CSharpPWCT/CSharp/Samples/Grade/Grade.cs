using System ;
public class Grade
{
	public static void Main ( string[] args )
	{
		int iPercentage ;
		string sPercentage ;
		Console.WriteLine( "Enter percentage (1:100)  ?" );
		sPercentage = Console.ReadLine() ;
		iPercentage = Int32.Parse( sPercentage );
		if ( iPercentage >= 90 )
		{
			Console.WriteLine( "A" );
		}
		else
		{
			if ( iPercentage >= 80 )
			{
				Console.WriteLine( "B" );
			}
			else
			{
				if ( iPercentage >= 70 )
				{
					Console.WriteLine( "C" );
				}
				else
				{
					if ( iPercentage >= 60 )
					{
						Console.WriteLine( "D" );
					}
					else
					{
						Console.WriteLine( "F" );
					}
				}
			}
		}
		sPercentage = Console.ReadLine() ;
	}
}


