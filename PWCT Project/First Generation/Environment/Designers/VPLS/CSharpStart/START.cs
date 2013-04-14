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
	private System.Windows.Forms.ListBox list1 ;
	private System.Windows.Forms.TextBox edit1 ;
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
		this.lbl1.Top = 14 ;
		this.lbl1.Left = 145 ;
		this.lbl1.Width = 200 ;
		this.lbl1.Height = 30 ;
		this.lbl1.Text = " Welcome to C#PWCT  " ;
		int[] lbl1acolorsfc = {0,0,0} ;
		this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
		int[] lbl1acolorsbc = {39,248,170} ;
		this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
		this.lbl1.Font = new Font( "Times New Roman" , 14) ;
		this.text1 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text1);
		text1.Click += new System.EventHandler (this.text1_Click);
		text1.GotFocus += new System.EventHandler (this.text1_GotFocus);
		text1.LostFocus += new System.EventHandler (this.text1_LostFocus);
		this.text1.Top = 48 ;
		this.text1.Left = 139 ;
		this.text1.Width = 200 ;
		this.text1.Height = 30 ;
		this.text1.Text = " " ;
		int[] text1acolorsfc = {0,0,0} ;
		this.text1.ForeColor = System.Drawing.Color.FromArgb (text1acolorsfc[0],text1acolorsfc[1],text1acolorsfc[2]);
		int[] text1acolorsbc = {255,255,255} ;
		this.text1.BackColor = System.Drawing.Color.FromArgb (text1acolorsbc[0],text1acolorsbc[1],text1acolorsbc[2]);
		this.text1.Font = new Font( "Times New Roman" , 10) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 296 ;
		this.btn1.Left = 149 ;
		this.btn1.Width = 200 ;
		this.btn1.Height = 30 ;
		this.btn1.Text = " Close " ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {255,255,255} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Times New Roman" , 14) ;
		this.list1 = new System.Windows.Forms.ListBox ( );
		this.Controls.Add (list1);
		list1.Click += new System.EventHandler (this.list1_Click);
		list1.GotFocus += new System.EventHandler (this.list1_GotFocus);
		list1.LostFocus += new System.EventHandler (this.list1_LostFocus);
		this.list1.Top = 90 ;
		this.list1.Left = 14 ;
		this.list1.Width = 216 ;
		this.list1.Height = 193 ;
		int[] list1acolorsfc = {0,0,0} ;
		this.list1.ForeColor = System.Drawing.Color.FromArgb (list1acolorsfc[0],list1acolorsfc[1],list1acolorsfc[2]);
		int[] list1acolorsbc = {255,255,255} ;
		this.list1.BackColor = System.Drawing.Color.FromArgb (list1acolorsbc[0],list1acolorsbc[1],list1acolorsbc[2]);
		this.list1.Font = new Font( "Times New Roman" , 10) ;
		this.edit1 = new System.Windows.Forms.TextBox ( );
		edit1.Multiline = true ;
		edit1.ScrollBars = ScrollBars.Both ;
		edit1.WordWrap = false ;
		edit1.AcceptsReturn = true ;
		this.Controls.Add (edit1);
		edit1.Click += new System.EventHandler (this.edit1_Click);
		edit1.GotFocus += new System.EventHandler (this.edit1_GotFocus);
		edit1.LostFocus += new System.EventHandler (this.edit1_LostFocus);
		this.edit1.Top = 89 ;
		this.edit1.Left = 241 ;
		this.edit1.Width = 231 ;
		this.edit1.Height = 196 ;
		this.edit1.Text = " " ;
		int[] edit1acolorsfc = {0,0,0} ;
		this.edit1.ForeColor = System.Drawing.Color.FromArgb (edit1acolorsfc[0],edit1acolorsfc[1],edit1acolorsfc[2]);
		int[] edit1acolorsbc = {255,255,255} ;
		this.edit1.BackColor = System.Drawing.Color.FromArgb (edit1acolorsbc[0],edit1acolorsbc[1],edit1acolorsbc[2]);
		this.edit1.Font = new Font( "Times New Roman" , 10) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {39,248,170} ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
		this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.Sizable;
		this.WindowState = System.Windows.Forms.FormWindowState.Normal;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 506 ;
		this.Height = 379 ;
		this.Text = "What" ;
		this.Opacity = 100 ;
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
	protected void list1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void list1_GotFocus (  object sender, System.EventArgs e)
	{
	}
	protected void list1_LostFocus (  object sender, System.EventArgs e)
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

