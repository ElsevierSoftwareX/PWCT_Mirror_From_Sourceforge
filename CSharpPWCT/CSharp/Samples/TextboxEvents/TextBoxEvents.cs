using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.TextBox text1 ;
	private System.Windows.Forms.TextBox text2 ;
	private System.Windows.Forms.TextBox text3 ;
	public static void Main ( string[] argc )
	{
		Application.Run(  new win1() );
	}
	public win1 (  )
	{
		this.Load += new System.EventHandler( this.win1_Load );
		this.Click += new System.EventHandler( this.win1_Click );
		this.text1 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text1);
		text1.Click += new System.EventHandler (this.text1_Click);
		text1.GotFocus += new System.EventHandler (this.text1_GotFocus);
		text1.LostFocus += new System.EventHandler (this.text1_LostFocus);
		this.text1.Top = 59 ;
		this.text1.Left = 85 ;
		this.text1.Width = 200 ;
		this.text1.Height = 30 ;
		this.text1.Text = " " ;
		int[] text1acolorsfc = {0,0,0} ;
		this.text1.ForeColor = System.Drawing.Color.FromArgb (text1acolorsfc[0],text1acolorsfc[1],text1acolorsfc[2]);
		int[] text1acolorsbc = {255,255,255} ;
		this.text1.BackColor = System.Drawing.Color.FromArgb (text1acolorsbc[0],text1acolorsbc[1],text1acolorsbc[2]);
		this.text1.Font = new Font( "Arial" , 10) ;
		this.text2 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text2);
		text2.Click += new System.EventHandler (this.text2_Click);
		text2.GotFocus += new System.EventHandler (this.text2_GotFocus);
		text2.LostFocus += new System.EventHandler (this.text2_LostFocus);
		this.text2.Top = 119 ;
		this.text2.Left = 85 ;
		this.text2.Width = 200 ;
		this.text2.Height = 30 ;
		this.text2.Text = " " ;
		int[] text2acolorsfc = {0,0,0} ;
		this.text2.ForeColor = System.Drawing.Color.FromArgb (text2acolorsfc[0],text2acolorsfc[1],text2acolorsfc[2]);
		int[] text2acolorsbc = {255,255,255} ;
		this.text2.BackColor = System.Drawing.Color.FromArgb (text2acolorsbc[0],text2acolorsbc[1],text2acolorsbc[2]);
		this.text2.Font = new Font( "Arial" , 10) ;
		this.text3 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text3);
		text3.Click += new System.EventHandler (this.text3_Click);
		text3.GotFocus += new System.EventHandler (this.text3_GotFocus);
		text3.LostFocus += new System.EventHandler (this.text3_LostFocus);
		this.text3.Top = 182 ;
		this.text3.Left = 87 ;
		this.text3.Width = 200 ;
		this.text3.Height = 30 ;
		this.text3.Text = " " ;
		int[] text3acolorsfc = {0,0,0} ;
		this.text3.ForeColor = System.Drawing.Color.FromArgb (text3acolorsfc[0],text3acolorsfc[1],text3acolorsfc[2]);
		int[] text3acolorsbc = {255,255,255} ;
		this.text3.BackColor = System.Drawing.Color.FromArgb (text3acolorsbc[0],text3acolorsbc[1],text3acolorsbc[2]);
		this.text3.Font = new Font( "Arial" , 10) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {169,231,204} ;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 400 ;
		this.Height = 317 ;
		this.Text = "Textbox Events " ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
	}
	protected void text1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void text1_GotFocus (  object sender, System.EventArgs e)
	{
		text1.Text = "GotFocus" ;
	}
	protected void text1_LostFocus (  object sender, System.EventArgs e)
	{
		text1.Text = "LostFocus" ;
	}
	protected void text2_Click (  object sender, System.EventArgs e)
	{
	}
	protected void text2_GotFocus (  object sender, System.EventArgs e)
	{
		text2.Text = "GotFocus" ;
	}
	protected void text2_LostFocus (  object sender, System.EventArgs e)
	{
		text2.Text = "LostFocus" ;
	}
	protected void text3_Click (  object sender, System.EventArgs e)
	{
		text3.Text = "Click" ;
	}
	protected void text3_GotFocus (  object sender, System.EventArgs e)
	{
	}
	protected void text3_LostFocus (  object sender, System.EventArgs e)
	{
	}
}


