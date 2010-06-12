using System ;
public class Addition
{
	public static void Main ( string[] args )
	{
		string firstNumber,secondNumber ;
		int number1,number2,sum ;
		Console.WriteLine( "Please enter the first integer: " );
		firstNumber = Console.ReadLine() ;
		Console.WriteLine( "Please enter the second integer: " );
		secondNumber = Console.ReadLine() ;
		number1 = Int32.Parse( firstNumber );
		number2 = Int32.Parse( secondNumber );
		sum = number1 + number2 ;
		Console.WriteLine( "The sum is {0}.", sum );
		firstNumber = Console.ReadLine() ;
	}
}


