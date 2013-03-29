using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class ManyForms2
{
public static void Main ( string[] argc )
{
const int winscount = 10 ;
win1[] myforms ;
myforms = new win1[winscount] ;
for ( int x = 1 ; x <= winscount ; x++ )
{
myforms[x-1] = new win1() ;
myforms[x-1].Show(  ) ;
myforms[x-1].Text = "Hello [" + x.ToString() + "]" ;
myforms[x-1].Top = 30 * x ;
}
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
		int [] acolors = {255,255,255} ;
		this.BackColor = System.Drawing.SystemColors.Control;
		this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Sizable;
		this.WindowState = System.Windows.Forms.FormWindowState.Normal;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 400 ;
		this.Height = 400 ;
		this.Text = "Window Title" ;
		this.Opacity = 100 ;
	}
}


