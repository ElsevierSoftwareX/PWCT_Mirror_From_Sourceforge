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
	private System.Windows.Forms.ListBox list1 ;
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
		this.text1 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text1);
		text1.Click += new System.EventHandler (this.text1_Click);
		text1.GotFocus += new System.EventHandler (this.text1_GotFocus);
		text1.LostFocus += new System.EventHandler (this.text1_LostFocus);
		this.text1.Top = 72 ;
		this.text1.Left = 160 ;
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
		this.text2.Top = 109 ;
		this.text2.Left = 160 ;
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
		this.text3.Top = 149 ;
		this.text3.Left = 160 ;
		this.text3.Width = 200 ;
		this.text3.Height = 30 ;
		this.text3.Text = " " ;
		int[] text3acolorsfc = {0,0,0} ;
		this.text3.ForeColor = System.Drawing.Color.FromArgb (text3acolorsfc[0],text3acolorsfc[1],text3acolorsfc[2]);
		int[] text3acolorsbc = {255,255,255} ;
		this.text3.BackColor = System.Drawing.Color.FromArgb (text3acolorsbc[0],text3acolorsbc[1],text3acolorsbc[2]);
		this.text3.Font = new Font( "Arial" , 10) ;
		this.list1 = new System.Windows.Forms.ListBox ( );
		this.Controls.Add (list1);
		list1.Click += new System.EventHandler (this.list1_Click);
		list1.GotFocus += new System.EventHandler (this.list1_GotFocus);
		list1.LostFocus += new System.EventHandler (this.list1_LostFocus);
		this.list1.Top = 70 ;
		this.list1.Left = 380 ;
		this.list1.Width = 218 ;
		this.list1.Height = 112 ;
		int[] list1acolorsfc = {0,0,0} ;
		this.list1.ForeColor = System.Drawing.Color.FromArgb (list1acolorsfc[0],list1acolorsfc[1],list1acolorsfc[2]);
		int[] list1acolorsbc = {255,255,255} ;
		this.list1.BackColor = System.Drawing.Color.FromArgb (list1acolorsbc[0],list1acolorsbc[1],list1acolorsbc[2]);
		this.list1.Font = new Font( "Arial" , 10) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 214 ;
		this.btn1.Left = 152 ;
		this.btn1.Width = 200 ;
		this.btn1.Height = 30 ;
		this.btn1.Text = " Ok " ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {255,255,255} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Arial" , 10) ;
		this.btn2 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn2);
		btn2.Click += new System.EventHandler (this.btn2_Click);
		this.btn2.Top = 214 ;
		this.btn2.Left = 384 ;
		this.btn2.Width = 200 ;
		this.btn2.Height = 30 ;
		this.btn2.Text = " Cancel" ;
		int[] btn2acolorsfc = {0,0,0} ;
		this.btn2.ForeColor = System.Drawing.Color.FromArgb (btn2acolorsfc[0],btn2acolorsfc[1],btn2acolorsfc[2]);
		int[] btn2acolorsbc = {255,255,255} ;
		this.btn2.BackColor = System.Drawing.Color.FromArgb (btn2acolorsbc[0],btn2acolorsbc[1],btn2acolorsbc[2]);
		this.btn2.Font = new Font( "Arial" , 10) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {0,255,128} ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
		this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Sizable;
		this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 759 ;
		this.Height = 440 ;
		this.Text = "Hello World" ;
		this.Opacity = 100 ;
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
	protected void list1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void list1_GotFocus (  object sender, System.EventArgs e)
	{
	}
	protected void list1_LostFocus (  object sender, System.EventArgs e)
	{
	}
	protected void btn1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn2_Click (  object sender, System.EventArgs e)
	{
	}
}


