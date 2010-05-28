using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class Mix1
{
          public static void Main ( string[] argc )
          {
                    Console.WriteLine( "Hello Wolrd " );
                    for ( int x = 1 ; x <= 10 ; x++ )
                    {
                              Console.WriteLine( "{0} ",x );
                              if ( x == 3 )
                              {
                                        Console.WriteLine( "this is number three " );
                              }
                              if ( x == 5 )
                              {
                                        Console.WriteLine( "this is number five " );
                              }
                    }
                    string wait ;
                    wait = Console.ReadLine() ;
          }
}


