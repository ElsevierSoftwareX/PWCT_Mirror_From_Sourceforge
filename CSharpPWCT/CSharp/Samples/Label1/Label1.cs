using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.Label lbl1 ;
	public static void Main ( string[] argc )
	{
		Application.Run(  new win1() );
	}
	public win1 (  )
	{
		this.Load += new System.EventHandler( this.win1_Load );
		this.Click += new System.EventHandler( this.win1_Click );
		this.lbl1 = new System.Windows.Forms.Label ( );
		this.Controls.Add (lbl1);
		lbl1.Click += new System.EventHandler (this.lbl1_Click);
		this.lbl1.Top = 149 ;
		this.lbl1.Left = 34 ;
		this.lbl1.Width = 528 ;
		this.lbl1.Height = 62 ;
		this.lbl1.Text = "Welcome to C#PWCT" ;
		int[] lbl1acolorsfc = {255,128,64} ;
		this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
		int[] lbl1acolorsbc = {255,255,255} ;
		this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
		this.lbl1.Font = new Font( "Arial" , 36) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {255,255,255} ;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 610 ;
		this.Height = 400 ;
		this.Text = "Label1 " ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
	}
	protected void lbl1_Click (  object sender, System.EventArgs e)
	{
	}
}


