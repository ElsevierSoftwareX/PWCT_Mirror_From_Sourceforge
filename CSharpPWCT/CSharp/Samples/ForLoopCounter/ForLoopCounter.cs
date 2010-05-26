using System ;
public class test
{
          public static void Main ( string[] args )
          {
                    int iStart,iEnd ;
                    string sStart,sEnd ;
                    Console.WriteLine( "Start :  " );
                    sStart = Console.ReadLine() ;
                    Console.WriteLine( "End :  " );
                    sEnd = Console.ReadLine() ;
                    iStart = Int32.Parse( sStart );
                    iEnd = Int32.Parse( sEnd );
                    for ( int x = iStart ; x <= iEnd ; x++ )
                    {
                              Console.WriteLine( "{0} ",x );
                    }
                    sStart = Console.ReadLine() ;
          }
}


