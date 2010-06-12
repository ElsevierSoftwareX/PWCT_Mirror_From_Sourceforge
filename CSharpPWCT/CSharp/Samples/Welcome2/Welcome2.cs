using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.Label lbl1 ;
	private System.Windows.Forms.TextBox text1 ;
	private System.Windows.Forms.Button btn1 ;
	private System.Windows.Forms.Button btn2 ;
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
		this.lbl1.Top = 17 ;
		this.lbl1.Left = 93 ;
		this.lbl1.Width = 277 ;
		this.lbl1.Height = 36 ;
		this.lbl1.Text = "Please Enter Your Name" ;
		int[] lbl1acolorsfc = {64,0,64} ;
		this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
		int[] lbl1acolorsbc = {169,231,204} ;
		this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
		this.lbl1.Font = new Font( "Arial" , 16) ;
		this.text1 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text1);
		text1.Click += new System.EventHandler (this.text1_Click);
		text1.GotFocus += new System.EventHandler (this.text1_GotFocus);
		text1.LostFocus += new System.EventHandler (this.text1_LostFocus);
		this.text1.Top = 60 ;
		this.text1.Left = 96 ;
		this.text1.Width = 265 ;
		this.text1.Height = 31 ;
		this.text1.Text = " " ;
		int[] text1acolorsfc = {0,0,0} ;
		this.text1.ForeColor = System.Drawing.Color.FromArgb (text1acolorsfc[0],text1acolorsfc[1],text1acolorsfc[2]);
		int[] text1acolorsbc = {255,255,255} ;
		this.text1.BackColor = System.Drawing.Color.FromArgb (text1acolorsbc[0],text1acolorsbc[1],text1acolorsbc[2]);
		this.text1.Font = new Font( "Arial" , 14) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 110 ;
		this.btn1.Left = 236 ;
		this.btn1.Width = 200 ;
		this.btn1.Height = 30 ;
		this.btn1.Text = "Close" ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {252,190,242} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Arial" , 14) ;
		this.btn2 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn2);
		btn2.Click += new System.EventHandler (this.btn2_Click);
		this.btn2.Top = 110 ;
		this.btn2.Left = 28 ;
		this.btn2.Width = 200 ;
		this.btn2.Height = 30 ;
		this.btn2.Text = "Say Hello" ;
		int[] btn2acolorsfc = {0,0,0} ;
		this.btn2.ForeColor = System.Drawing.Color.FromArgb (btn2acolorsfc[0],btn2acolorsfc[1],btn2acolorsfc[2]);
		int[] btn2acolorsbc = {252,190,242} ;
		this.btn2.BackColor = System.Drawing.Color.FromArgb (btn2acolorsbc[0],btn2acolorsbc[1],btn2acolorsbc[2]);
		this.btn2.Font = new Font( "Arial" , 14) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {169,231,204} ;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 472 ;
		this.Height = 191 ;
		this.Text = "Welcome2 " ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
	}
	protected void lbl1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void text1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void text1_GotFocus (  object sender, System.EventArgs e)
	{
	}
	protected void text1_LostFocus (  object sender, System.EventArgs e)
	{
	}
	protected void btn1_Click (  object sender, System.EventArgs e)
	{
		this.Close(  ) ;
	}
	protected void btn2_Click (  object sender, System.EventArgs e)
	{
	text1.Text = " Hello " + text1.Text ;
	}
}


