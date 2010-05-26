using System ;
public class DoWhileCounter
{
          public static void Main ( string[] args )
          {
                    string x ;
                    int counter = 1 ;
                    do
                    {
                              Console.WriteLine( "{0} ", counter );
                              counter = counter + 1 ;
                    } while ( counter <= 10 ) ;
                    x = Console.ReadLine() ;
          }
}


