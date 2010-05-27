using System ;
public class test
{
          public static void Main ( string[] argc )
          {
                    int iTest ;
                    iTest = MyMethod( 5 ) ;
                    Console.WriteLine( "{0} ",iTest );
                    string wait ;
                    wait = Console.ReadLine() ;
          }
          public static int MyMethod ( int x )
          {
                    return x * x ;
          }
}


