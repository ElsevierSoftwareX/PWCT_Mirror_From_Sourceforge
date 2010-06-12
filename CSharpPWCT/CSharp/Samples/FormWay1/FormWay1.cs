using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class myForm : Form
{
	public static void Main ( string[] argc )
	{
		Application.Run(  new myForm() );
	}
	public myForm (  )
	{
		this.Text = "Hello World" ;
	}
}


