using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
	private System.Windows.Forms.Label lbl1 ;
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
		this.lbl1.Top = 23 ;
		this.lbl1.Left = 197 ;
		this.lbl1.Width = 202 ;
		this.lbl1.Height = 81 ;
		this.lbl1.Text = "One" ;
		int[] lbl1acolorsfc = {238,183,142} ;
		this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
		int[] lbl1acolorsbc = {255,255,255} ;
		this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
		this.lbl1.Font = new Font( "Arial" , 48) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 124 ;
		this.btn1.Left = 47 ;
		this.btn1.Width = 200 ;
		this.btn1.Height = 30 ;
		this.btn1.Text = "One" ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {252,190,242} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Arial" , 14) ;
		this.btn2 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn2);
		btn2.Click += new System.EventHandler (this.btn2_Click);
		this.btn2.Top = 125 ;
		this.btn2.Left = 284 ;
		this.btn2.Width = 200 ;
		this.btn2.Height = 30 ;
		this.btn2.Text = "Two" ;
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
		int [] acolors = {255,255,255} ;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 546 ;
		this.Height = 227 ;
		this.Text = "Label and Two Buttons " ;
		this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
	}
	protected void lbl1_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn1_Click (  object sender, System.EventArgs e)
	{
		lbl1.Text = btn1.Text ;
	}
	protected void btn2_Click (  object sender, System.EventArgs e)
	{
		lbl1.Text = btn2.Text ;
	}
}


