using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class ManyForms
{
	public static void Main ( string[] argc )
	{
		win1 obj1 = new win1() ;
		obj1.Show(  ) ;
		obj1.Top = 100 ;
		obj1.Text = "Window [1]" ;
		win1 obj2 = new win1() ;
		obj2.Show(  ) ;
		obj2.Top = 200 ;
		obj2.Text = "Window [2]" ;
		win1 obj3 = new win1() ;
		obj3.Show(  ) ;
		obj3.Top = 300 ;
		obj3.Text = "Window [3]" ;
		win1 obj4 = new win1() ;
		obj4.Show(  ) ;
		obj4.Top = 400 ;
		obj4.Text = "Window [4]" ;
		Application.Run(  );
	}
}
public class win1 : Form
{
	public win1 (  )
	{
		this.Load += new System.EventHandler( this.win1_Load );
		this.Click += new System.EventHandler( this.win1_Click );
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {64,0,64} ;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 505 ;
		this.Height = 273 ;
		this.Text = " Hello " ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
	}
}


