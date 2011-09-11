using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.TextBox text1 ;
	private System.Windows.Forms.ListBox list1 ;
	private System.Windows.Forms.Button btn1 ;
	private System.Windows.Forms.TextBox edit1 ;
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
		this.text1.Top = 172 ;
		this.text1.Left = 141 ;
		this.text1.Width = 226 ;
		this.text1.Height = 42 ;
		this.text1.Text = " " ;
		int[] text1acolorsfc = {0,0,0} ;
		this.text1.ForeColor = System.Drawing.Color.FromArgb (text1acolorsfc[0],text1acolorsfc[1],text1acolorsfc[2]);
		int[] text1acolorsbc = {64,0,64} ;
		this.text1.BackColor = System.Drawing.Color.FromArgb (text1acolorsbc[0],text1acolorsbc[1],text1acolorsbc[2]);
		this.text1.Font = new Font( "Arial" , 14) ;
		this.list1 = new System.Windows.Forms.ListBox ( );
		this.Controls.Add (list1);
		list1.Click += new System.EventHandler (this.list1_Click);
		list1.GotFocus += new System.EventHandler (this.list1_GotFocus);
		list1.LostFocus += new System.EventHandler (this.list1_LostFocus);
		this.list1.Top = 248 ;
		this.list1.Left = 63 ;
		this.list1.Width = 145 ;
		this.list1.Height = 115 ;
		int[] list1acolorsfc = {0,0,0} ;
		this.list1.ForeColor = System.Drawing.Color.FromArgb (list1acolorsfc[0],list1acolorsfc[1],list1acolorsfc[2]);
		int[] list1acolorsbc = {255,255,255} ;
		this.list1.BackColor = System.Drawing.Color.FromArgb (list1acolorsbc[0],list1acolorsbc[1],list1acolorsbc[2]);
		this.list1.Font = new Font( "Arial" , 10) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 285 ;
		this.btn1.Left = 331 ;
		this.btn1.Width = 200 ;
		this.btn1.Height = 30 ;
		this.btn1.Text = " ok " ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {255,255,255} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Arial" , 10) ;
		this.edit1 = new System.Windows.Forms.TextBox ( );
		edit1.Multiline = true ;
		edit1.ScrollBars = ScrollBars.Both ;
		edit1.WordWrap = false ;
		edit1.AcceptsReturn = true ;
		this.Controls.Add (edit1);
		edit1.Click += new System.EventHandler (this.edit1_Click);
		edit1.GotFocus += new System.EventHandler (this.edit1_GotFocus);
		edit1.LostFocus += new System.EventHandler (this.edit1_LostFocus);
		this.edit1.Top = 21 ;
		this.edit1.Left = 422 ;
		this.edit1.Width = 307 ;
		this.edit1.Height = 231 ;
		this.edit1.Text = " " ;
		int[] edit1acolorsfc = {0,0,0} ;
		this.edit1.ForeColor = System.Drawing.Color.FromArgb (edit1acolorsfc[0],edit1acolorsfc[1],edit1acolorsfc[2]);
		int[] edit1acolorsbc = {150,252,196} ;
		this.edit1.BackColor = System.Drawing.Color.FromArgb (edit1acolorsbc[0],edit1acolorsbc[1],edit1acolorsbc[2]);
		this.edit1.Font = new Font( "Arial" , 14) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {0,255,128} ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
		this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Sizable;
		this.WindowState = System.Windows.Forms.FormWindowState.Normal;
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
	protected void edit1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void edit1_GotFocus (  object sender, System.EventArgs e)
	{
	}
	protected void edit1_LostFocus (  object sender, System.EventArgs e)
	{
	}
}


