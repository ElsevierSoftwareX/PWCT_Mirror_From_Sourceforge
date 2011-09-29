using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.TextBox edit1 ;
	public static void Main ( string[] argc )
	{
		Application.Run(  new win1() );
	}
	public win1 (  )
	{
		this.Load += new System.EventHandler( this.win1_Load );
		this.Click += new System.EventHandler( this.win1_Click );
		this.edit1 = new System.Windows.Forms.TextBox ( );
		edit1.Multiline = true ;
		edit1.ScrollBars = ScrollBars.Both ;
		edit1.WordWrap = false ;
		edit1.AcceptsReturn = true ;
		this.Controls.Add (edit1);
		edit1.Click += new System.EventHandler (this.edit1_Click);
		edit1.GotFocus += new System.EventHandler (this.edit1_GotFocus);
		edit1.LostFocus += new System.EventHandler (this.edit1_LostFocus);
		this.edit1.Top = 10 ;
		this.edit1.Left = 12 ;
		this.edit1.Width = 345 ;
		this.edit1.Height = 315 ;
		this.edit1.Text = " " ;
		int[] edit1acolorsfc = {0,255,128} ;
		this.edit1.ForeColor = System.Drawing.Color.FromArgb (edit1acolorsfc[0],edit1acolorsfc[1],edit1acolorsfc[2]);
		int[] edit1acolorsbc = {64,0,64} ;
		this.edit1.BackColor = System.Drawing.Color.FromArgb (edit1acolorsbc[0],edit1acolorsbc[1],edit1acolorsbc[2]);
		this.edit1.Font = new Font( "Times New Roman" , 10) ;
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


