using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.ListBox list1 ;
	private System.Windows.Forms.Button btn1 ;
	public static void Main ( string[] argc )
	{
		Application.Run(  new win1() );
	}
	public win1 (  )
	{
		this.Load += new System.EventHandler( this.win1_Load );
		this.Click += new System.EventHandler( this.win1_Click );
		this.list1 = new System.Windows.Forms.ListBox ( );
		this.Controls.Add (list1);
		list1.Click += new System.EventHandler (this.list1_Click);
		list1.GotFocus += new System.EventHandler (this.list1_GotFocus);
		list1.LostFocus += new System.EventHandler (this.list1_LostFocus);
		this.list1.Top = 62 ;
		this.list1.Left = 43 ;
		this.list1.Width = 293 ;
		this.list1.Height = 223 ;
		int[] list1acolorsfc = {0,0,0} ;
		this.list1.ForeColor = System.Drawing.Color.FromArgb (list1acolorsfc[0],list1acolorsfc[1],list1acolorsfc[2]);
		int[] list1acolorsbc = {255,255,255} ;
		this.list1.BackColor = System.Drawing.Color.FromArgb (list1acolorsbc[0],list1acolorsbc[1],list1acolorsbc[2]);
		this.list1.Font = new Font( "Times New Roman" , 10) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 299 ;
		this.btn1.Left = 210 ;
		this.btn1.Width = 127 ;
		this.btn1.Height = 34 ;
		this.btn1.Text = " Close " ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {255,255,255} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Times New Roman" , 14) ;
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
		this.Width = 410 ;
		this.Height = 440 ;
		this.Text = "Hello World" ;
		this.Opacity = 100 ;
		list1.Items.Add( "Hello World" ) ;
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
		this.Close(  ) ;
	}
}


