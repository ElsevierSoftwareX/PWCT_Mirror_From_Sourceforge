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
	private System.Windows.Forms.Label lbl3 ;
	private System.Windows.Forms.TextBox text1 ;
	private System.Windows.Forms.TextBox text2 ;
	private System.Windows.Forms.TextBox text3 ;
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
		this.lbl1.Top = 38 ;
		this.lbl1.Left = 72 ;
		this.lbl1.Width = 110 ;
		this.lbl1.Height = 30 ;
		this.lbl1.Text = " Number 1" ;
		int[] lbl1acolorsfc = {0,0,0} ;
		this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
		int[] lbl1acolorsbc = {41,208,222} ;
		this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
		this.lbl1.Font = new Font( "Arial" , 14) ;
		this.lbl2 = new System.Windows.Forms.Label ( );
		this.Controls.Add (lbl2);
		lbl2.Click += new System.EventHandler (this.lbl2_Click);
		this.lbl2.Top = 84 ;
		this.lbl2.Left = 72 ;
		this.lbl2.Width = 100 ;
		this.lbl2.Height = 30 ;
		this.lbl2.Text = " Number 2" ;
		int[] lbl2acolorsfc = {0,0,0} ;
		this.lbl2.ForeColor = System.Drawing.Color.FromArgb (lbl2acolorsfc[0],lbl2acolorsfc[1],lbl2acolorsfc[2]);
		int[] lbl2acolorsbc = {41,208,222} ;
		this.lbl2.BackColor = System.Drawing.Color.FromArgb (lbl2acolorsbc[0],lbl2acolorsbc[1],lbl2acolorsbc[2]);
		this.lbl2.Font = new Font( "Arial" , 14) ;
		this.lbl3 = new System.Windows.Forms.Label ( );
		this.Controls.Add (lbl3);
		lbl3.Click += new System.EventHandler (this.lbl3_Click);
		this.lbl3.Top = 130 ;
		this.lbl3.Left = 72 ;
		this.lbl3.Width = 90 ;
		this.lbl3.Height = 30 ;
		this.lbl3.Text = "Result" ;
		int[] lbl3acolorsfc = {0,0,0} ;
		this.lbl3.ForeColor = System.Drawing.Color.FromArgb (lbl3acolorsfc[0],lbl3acolorsfc[1],lbl3acolorsfc[2]);
		int[] lbl3acolorsbc = {41,208,222} ;
		this.lbl3.BackColor = System.Drawing.Color.FromArgb (lbl3acolorsbc[0],lbl3acolorsbc[1],lbl3acolorsbc[2]);
		this.lbl3.Font = new Font( "Arial" , 14) ;
		this.text1 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text1);
		text1.Click += new System.EventHandler (this.text1_Click);
		text1.GotFocus += new System.EventHandler (this.text1_GotFocus);
		text1.LostFocus += new System.EventHandler (this.text1_LostFocus);
		this.text1.Top = 32 ;
		this.text1.Left = 196 ;
		this.text1.Width = 200 ;
		this.text1.Height = 30 ;
		this.text1.Text = " " ;
		int[] text1acolorsfc = {0,0,0} ;
		this.text1.ForeColor = System.Drawing.Color.FromArgb (text1acolorsfc[0],text1acolorsfc[1],text1acolorsfc[2]);
		int[] text1acolorsbc = {0,255,128} ;
		this.text1.BackColor = System.Drawing.Color.FromArgb (text1acolorsbc[0],text1acolorsbc[1],text1acolorsbc[2]);
		this.text1.Font = new Font( "Arial" , 14) ;
		this.text2 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text2);
		text2.Click += new System.EventHandler (this.text2_Click);
		text2.GotFocus += new System.EventHandler (this.text2_GotFocus);
		text2.LostFocus += new System.EventHandler (this.text2_LostFocus);
		this.text2.Top = 80 ;
		this.text2.Left = 195 ;
		this.text2.Width = 200 ;
		this.text2.Height = 30 ;
		this.text2.Text = " " ;
		int[] text2acolorsfc = {0,0,0} ;
		this.text2.ForeColor = System.Drawing.Color.FromArgb (text2acolorsfc[0],text2acolorsfc[1],text2acolorsfc[2]);
		int[] text2acolorsbc = {0,255,128} ;
		this.text2.BackColor = System.Drawing.Color.FromArgb (text2acolorsbc[0],text2acolorsbc[1],text2acolorsbc[2]);
		this.text2.Font = new Font( "Arial" , 14) ;
		this.text3 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text3);
		text3.Click += new System.EventHandler (this.text3_Click);
		text3.GotFocus += new System.EventHandler (this.text3_GotFocus);
		text3.LostFocus += new System.EventHandler (this.text3_LostFocus);
		this.text3.Top = 128 ;
		this.text3.Left = 194 ;
		this.text3.Width = 200 ;
		this.text3.Height = 30 ;
		this.text3.Text = " " ;
		int[] text3acolorsfc = {0,0,0} ;
		this.text3.ForeColor = System.Drawing.Color.FromArgb (text3acolorsfc[0],text3acolorsfc[1],text3acolorsfc[2]);
		int[] text3acolorsbc = {0,255,128} ;
		this.text3.BackColor = System.Drawing.Color.FromArgb (text3acolorsbc[0],text3acolorsbc[1],text3acolorsbc[2]);
		this.text3.Font = new Font( "Arial" , 14) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 180 ;
		this.btn1.Left = 41 ;
		this.btn1.Width = 200 ;
		this.btn1.Height = 30 ;
		this.btn1.Text = " Sum" ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {72,249,231} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Arial" , 14) ;
		this.btn2 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn2);
		btn2.Click += new System.EventHandler (this.btn2_Click);
		this.btn2.Top = 179 ;
		this.btn2.Left = 257 ;
		this.btn2.Width = 200 ;
		this.btn2.Height = 30 ;
		this.btn2.Text = " Close" ;
		int[] btn2acolorsfc = {0,0,0} ;
		this.btn2.ForeColor = System.Drawing.Color.FromArgb (btn2acolorsfc[0],btn2acolorsfc[1],btn2acolorsfc[2]);
		int[] btn2acolorsbc = {72,249,231} ;
		this.btn2.BackColor = System.Drawing.Color.FromArgb (btn2acolorsbc[0],btn2acolorsbc[1],btn2acolorsbc[2]);
		this.btn2.Font = new Font( "Arial" , 14) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {41,208,222} ;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 509 ;
		this.Height = 276 ;
		this.Text = "Sum " ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
	}
	protected void lbl1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void lbl2_Click (  object sender, System.EventArgs e)
	{
	}
	protected void lbl3_Click (  object sender, System.EventArgs e)
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
	protected void text2_Click (  object sender, System.EventArgs e)
	{
	}
	protected void text2_GotFocus (  object sender, System.EventArgs e)
	{
	}
	protected void text2_LostFocus (  object sender, System.EventArgs e)
	{
	}
	protected void text3_Click (  object sender, System.EventArgs e)
	{
	}
	protected void text3_GotFocus (  object sender, System.EventArgs e)
	{
	}
	protected void text3_LostFocus (  object sender, System.EventArgs e)
	{
	}
	protected void btn1_Click (  object sender, System.EventArgs e)
	{
		int num1 ;
		int num2 ;
		int result ;
		num1 = Int32.Parse(text1.Text) ;
		num2 = Int32.Parse(text2.Text) ;
		result = num1+num2 ;
		text3.Text = result.ToString() ;
	}
	protected void btn2_Click (  object sender, System.EventArgs e)
	{
		this.Close(  ) ;
	}
}


