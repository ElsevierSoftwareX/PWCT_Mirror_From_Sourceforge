using System ;
public class test
{
          public static void Main ( string[] argc )
          {
                    int x = 1 ;
                    repeat:
                    Console.WriteLine( "{0} ",x );
                    x = x+1 ;
                    if ( x <= 10 )
                    {
                              goto repeat ;
                    }
                    string wait ;
                    wait = Console.ReadLine() ;
          }
}


