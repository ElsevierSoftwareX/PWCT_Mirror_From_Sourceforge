using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.Label lbl1 ;
	private System.Windows.Forms.Label lbl2 ;
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
		this.lbl1.Top = 126 ;
		this.lbl1.Left = 87 ;
		this.lbl1.Width = 200 ;
		this.lbl1.Height = 30 ;
		this.lbl1.Text = " Hello " ;
		int[] lbl1acolorsfc = {0,0,0} ;
		this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
		int[] lbl1acolorsbc = {255,255,255} ;
		this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
		this.lbl1.Font = new Font( "Times New Roman" , 10) ;
		this.lbl2 = new System.Windows.Forms.Label ( );
		this.Controls.Add (lbl2);
		lbl2.Click += new System.EventHandler (this.lbl2_Click);
		this.lbl2.Top = 176 ;
		this.lbl2.Left = 85 ;
		this.lbl2.Width = 200 ;
		this.lbl2.Height = 30 ;
		this.lbl2.Text = " Welcome to C#PWCT " ;
		int[] lbl2acolorsfc = {0,0,0} ;
		this.lbl2.ForeColor = System.Drawing.Color.FromArgb (lbl2acolorsfc[0],lbl2acolorsfc[1],lbl2acolorsfc[2]);
		int[] lbl2acolorsbc = {255,255,255} ;
		this.lbl2.BackColor = System.Drawing.Color.FromArgb (lbl2acolorsbc[0],lbl2acolorsbc[1],lbl2acolorsbc[2]);
		this.lbl2.Font = new Font( "Times New Roman" , 10) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {255,255,255} ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
		this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Sizable;
		this.WindowState = System.Windows.Forms.FormWindowState.Normal;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 410 ;
		this.Height = 440 ;
		this.Text = "Label 2" ;
		this.Opacity = 100 ;
	}
	protected void lbl1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void lbl2_Click (  object sender, System.EventArgs e)
	{
	}
}


