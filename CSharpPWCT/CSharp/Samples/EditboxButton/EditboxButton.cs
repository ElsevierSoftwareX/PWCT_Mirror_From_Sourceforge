using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.TextBox edit1 ;
	private System.Windows.Forms.Button btn1 ;
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
		this.edit1.Left = 10 ;
		this.edit1.Width = 373 ;
		this.edit1.Height = 296 ;
		this.edit1.Text = " " ;
		int[] edit1acolorsfc = {0,0,0} ;
		this.edit1.ForeColor = System.Drawing.Color.FromArgb (edit1acolorsfc[0],edit1acolorsfc[1],edit1acolorsfc[2]);
		int[] edit1acolorsbc = {244,208,241} ;
		this.edit1.BackColor = System.Drawing.Color.FromArgb (edit1acolorsbc[0],edit1acolorsbc[1],edit1acolorsbc[2]);
		this.edit1.Font = new Font( "Arial" , 14) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 315 ;
		this.btn1.Left = 98 ;
		this.btn1.Width = 200 ;
		this.btn1.Height = 30 ;
		this.btn1.Text = "Fill Editbox " ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {41,208,222} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Arial" , 14) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {252,190,242} ;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 400 ;
		this.Height = 400 ;
		this.Text = "Editbox and Button " ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
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
	protected void btn1_Click (  object sender, System.EventArgs e)
	{
	for ( int x = 1 ; x <= 3000 ; x++ )
	{
	edit1.Text = edit1.Text  + x.ToString() ;
	}
	}
}


