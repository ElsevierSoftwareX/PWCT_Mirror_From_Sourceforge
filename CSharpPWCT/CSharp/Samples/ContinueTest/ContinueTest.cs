using System ;
public class ContinueTest
{
          public static void Main ( string[] args )
          {
                    for ( int x = 1 ; x <= 10 ; x++ )
                    {
                              if ( x == 5 )
                              {
                                        continue ;
                              }
                              Console.WriteLine( "{0} ",x );
                    }
                    Console.WriteLine( "\nUsed continue to skip printing 5" );
                    string wait ;
                    wait = Console.ReadLine() ;
          }
}


