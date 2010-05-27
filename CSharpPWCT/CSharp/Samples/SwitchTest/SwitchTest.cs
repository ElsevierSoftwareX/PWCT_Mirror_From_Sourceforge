using System ;
public class test
{
          public static void Main ( string[] args )
          {
                    string sUserOption ;
                    int iUserOption ;
                    int iContinue = 1 ;
                    while ( iContinue == 1 )
                    {
                              Console.WriteLine( " Main Menu  " );
                              Console.WriteLine( " [1] Add " );
                              Console.WriteLine( " [1] Min " );
                              Console.WriteLine( " [1] Mul " );
                              Console.WriteLine( " [4] Div " );
                              Console.WriteLine( " [5] Exit " );
                              sUserOption = Console.ReadLine() ;
                              iUserOption = Int32.Parse( sUserOption );
                              switch ( iUserOption )
                              {
                                        case 1:
	                                        Console.WriteLine( "Option Number 1 " );
        	                                break;
                                        case 2:
                	                        Console.WriteLine( "Option number 2 " );
                        	                break;
                                        case 3:
                                	        Console.WriteLine( "Option number 3 " );
                                        	break;
                                        case 4:
	                                        Console.WriteLine( "Option number 4 " );
        	                                break;
                                        case 5:
                	                        iContinue = 0 ;
                        	                break;
                                        default:
                                	        Console.WriteLine( "Unknown selection " );
                                        	break;
                              }
                    }
          }
}


