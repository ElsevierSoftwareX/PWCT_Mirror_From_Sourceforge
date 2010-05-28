using System ;
public class Test
{
          enum Buffering
          {
                    BufOff = 1 ,
                    BufLockRecord = 2 ,
                    BufOptRecord = 3 ,
                    BufLockTable = 4 ,
                    BufOptTable = 5
          }
          public static void Main ( string[] argc )
          {
                    string wait ;
                    Console.WriteLine( "{0} ", Buffering.BufOff );
                    Console.WriteLine( "{0} ", (int) Buffering.BufOff );
                    Console.WriteLine( "{0}", Buffering.BufLockRecord );
                    Console.WriteLine( "{0}", (int) Buffering.BufLockRecord );
                    Console.WriteLine( "{0} ", Buffering.BufOptRecord );
                    Console.WriteLine( "{0} ", (int) Buffering.BufOptRecord );
                    Console.WriteLine( "{0} ", Buffering.BufLockTable );
                    Console.WriteLine( "{0} ", (int) Buffering.BufLockTable );
                    Console.WriteLine( "{0} ", Buffering.BufOptTable );
                    Console.WriteLine( "{0} ", (int) Buffering.BufOptTable );
                    wait = Console.ReadLine() ;
          }
}


