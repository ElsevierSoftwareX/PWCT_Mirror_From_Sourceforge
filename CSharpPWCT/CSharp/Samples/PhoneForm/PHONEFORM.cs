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
	private System.Windows.Forms.Button btn3 ;
	private System.Windows.Forms.Button btn4 ;
	private System.Windows.Forms.Button btn5 ;
	private System.Windows.Forms.Button btn6 ;
	private System.Windows.Forms.Button btn7 ;
	private System.Windows.Forms.Button btn8 ;
	private System.Windows.Forms.Button btn9 ;
	private System.Windows.Forms.Button btn10 ;
	private System.Windows.Forms.Button btn11 ;
	private System.Windows.Forms.Button btn12 ;
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
		this.lbl1.Top = 29 ;
		this.lbl1.Left = 118 ;
		this.lbl1.Width = 100 ;
		this.lbl1.Height = 30 ;
		this.lbl1.Text = "name " ;
		int[] lbl1acolorsfc = {0,0,0} ;
		this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
		int[] lbl1acolorsbc = {255,255,255} ;
		this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
		this.lbl1.Font = new Font( "Arial" , 12) ;
		this.lbl2 = new System.Windows.Forms.Label ( );
		this.Controls.Add (lbl2);
		lbl2.Click += new System.EventHandler (this.lbl2_Click);
		this.lbl2.Top = 84 ;
		this.lbl2.Left = 118 ;
		this.lbl2.Width = 100 ;
		this.lbl2.Height = 30 ;
		this.lbl2.Text = "address " ;
		int[] lbl2acolorsfc = {0,0,0} ;
		this.lbl2.ForeColor = System.Drawing.Color.FromArgb (lbl2acolorsfc[0],lbl2acolorsfc[1],lbl2acolorsfc[2]);
		int[] lbl2acolorsbc = {255,255,255} ;
		this.lbl2.BackColor = System.Drawing.Color.FromArgb (lbl2acolorsbc[0],lbl2acolorsbc[1],lbl2acolorsbc[2]);
		this.lbl2.Font = new Font( "Arial" , 12) ;
		this.lbl3 = new System.Windows.Forms.Label ( );
		this.Controls.Add (lbl3);
		lbl3.Click += new System.EventHandler (this.lbl3_Click);
		this.lbl3.Top = 135 ;
		this.lbl3.Left = 119 ;
		this.lbl3.Width = 100 ;
		this.lbl3.Height = 30 ;
		this.lbl3.Text = "phone " ;
		int[] lbl3acolorsfc = {0,0,0} ;
		this.lbl3.ForeColor = System.Drawing.Color.FromArgb (lbl3acolorsfc[0],lbl3acolorsfc[1],lbl3acolorsfc[2]);
		int[] lbl3acolorsbc = {255,255,255} ;
		this.lbl3.BackColor = System.Drawing.Color.FromArgb (lbl3acolorsbc[0],lbl3acolorsbc[1],lbl3acolorsbc[2]);
		this.lbl3.Font = new Font( "Arial" , 12) ;
		this.text1 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text1);
		text1.Click += new System.EventHandler (this.text1_Click);
		text1.GotFocus += new System.EventHandler (this.text1_GotFocus);
		text1.LostFocus += new System.EventHandler (this.text1_LostFocus);
		this.text1.Top = 27 ;
		this.text1.Left = 245 ;
		this.text1.Width = 330 ;
		this.text1.Height = 30 ;
		this.text1.Text = " " ;
		int[] text1acolorsfc = {0,0,0} ;
		this.text1.ForeColor = System.Drawing.Color.FromArgb (text1acolorsfc[0],text1acolorsfc[1],text1acolorsfc[2]);
		int[] text1acolorsbc = {255,255,255} ;
		this.text1.BackColor = System.Drawing.Color.FromArgb (text1acolorsbc[0],text1acolorsbc[1],text1acolorsbc[2]);
		this.text1.Font = new Font( "Arial" , 14) ;
		this.text2 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text2);
		text2.Click += new System.EventHandler (this.text2_Click);
		text2.GotFocus += new System.EventHandler (this.text2_GotFocus);
		text2.LostFocus += new System.EventHandler (this.text2_LostFocus);
		this.text2.Top = 77 ;
		this.text2.Left = 245 ;
		this.text2.Width = 330 ;
		this.text2.Height = 30 ;
		this.text2.Text = " " ;
		int[] text2acolorsfc = {0,0,0} ;
		this.text2.ForeColor = System.Drawing.Color.FromArgb (text2acolorsfc[0],text2acolorsfc[1],text2acolorsfc[2]);
		int[] text2acolorsbc = {255,255,255} ;
		this.text2.BackColor = System.Drawing.Color.FromArgb (text2acolorsbc[0],text2acolorsbc[1],text2acolorsbc[2]);
		this.text2.Font = new Font( "Arial" , 14) ;
		this.text3 = new System.Windows.Forms.TextBox ( );
		this.Controls.Add (text3);
		text3.Click += new System.EventHandler (this.text3_Click);
		text3.GotFocus += new System.EventHandler (this.text3_GotFocus);
		text3.LostFocus += new System.EventHandler (this.text3_LostFocus);
		this.text3.Top = 136 ;
		this.text3.Left = 246 ;
		this.text3.Width = 200 ;
		this.text3.Height = 30 ;
		this.text3.Text = " " ;
		int[] text3acolorsfc = {0,0,0} ;
		this.text3.ForeColor = System.Drawing.Color.FromArgb (text3acolorsfc[0],text3acolorsfc[1],text3acolorsfc[2]);
		int[] text3acolorsbc = {255,255,255} ;
		this.text3.BackColor = System.Drawing.Color.FromArgb (text3acolorsbc[0],text3acolorsbc[1],text3acolorsbc[2]);
		this.text3.Font = new Font( "Arial" , 14) ;
		this.btn1 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn1);
		btn1.Click += new System.EventHandler (this.btn1_Click);
		this.btn1.Top = 299 ;
		this.btn1.Left = 28 ;
		this.btn1.Width = 100 ;
		this.btn1.Height = 30 ;
		this.btn1.Text = "Add " ;
		int[] btn1acolorsfc = {0,0,0} ;
		this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
		int[] btn1acolorsbc = {111,227,192} ;
		this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
		this.btn1.Font = new Font( "Arial" , 16) ;
		this.btn2 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn2);
		btn2.Click += new System.EventHandler (this.btn2_Click);
		this.btn2.Top = 299 ;
		this.btn2.Left = 132 ;
		this.btn2.Width = 100 ;
		this.btn2.Height = 30 ;
		this.btn2.Text = "Edit " ;
		int[] btn2acolorsfc = {0,0,0} ;
		this.btn2.ForeColor = System.Drawing.Color.FromArgb (btn2acolorsfc[0],btn2acolorsfc[1],btn2acolorsfc[2]);
		int[] btn2acolorsbc = {111,227,192} ;
		this.btn2.BackColor = System.Drawing.Color.FromArgb (btn2acolorsbc[0],btn2acolorsbc[1],btn2acolorsbc[2]);
		this.btn2.Font = new Font( "Arial" , 16) ;
		this.btn3 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn3);
		btn3.Click += new System.EventHandler (this.btn3_Click);
		this.btn3.Top = 299 ;
		this.btn3.Left = 238 ;
		this.btn3.Width = 100 ;
		this.btn3.Height = 30 ;
		this.btn3.Text = "Find" ;
		int[] btn3acolorsfc = {0,0,0} ;
		this.btn3.ForeColor = System.Drawing.Color.FromArgb (btn3acolorsfc[0],btn3acolorsfc[1],btn3acolorsfc[2]);
		int[] btn3acolorsbc = {111,227,192} ;
		this.btn3.BackColor = System.Drawing.Color.FromArgb (btn3acolorsbc[0],btn3acolorsbc[1],btn3acolorsbc[2]);
		this.btn3.Font = new Font( "Arial" , 16) ;
		this.btn4 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn4);
		btn4.Click += new System.EventHandler (this.btn4_Click);
		this.btn4.Top = 300 ;
		this.btn4.Left = 353 ;
		this.btn4.Width = 106 ;
		this.btn4.Height = 30 ;
		this.btn4.Text = "Delete" ;
		int[] btn4acolorsfc = {0,0,0} ;
		this.btn4.ForeColor = System.Drawing.Color.FromArgb (btn4acolorsfc[0],btn4acolorsfc[1],btn4acolorsfc[2]);
		int[] btn4acolorsbc = {111,227,192} ;
		this.btn4.BackColor = System.Drawing.Color.FromArgb (btn4acolorsbc[0],btn4acolorsbc[1],btn4acolorsbc[2]);
		this.btn4.Font = new Font( "Arial" , 16) ;
		this.btn5 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn5);
		btn5.Click += new System.EventHandler (this.btn5_Click);
		this.btn5.Top = 191 ;
		this.btn5.Left = 254 ;
		this.btn5.Width = 90 ;
		this.btn5.Height = 30 ;
		this.btn5.Text = "Save" ;
		int[] btn5acolorsfc = {0,0,0} ;
		this.btn5.ForeColor = System.Drawing.Color.FromArgb (btn5acolorsfc[0],btn5acolorsfc[1],btn5acolorsfc[2]);
		int[] btn5acolorsbc = {255,128,192} ;
		this.btn5.BackColor = System.Drawing.Color.FromArgb (btn5acolorsbc[0],btn5acolorsbc[1],btn5acolorsbc[2]);
		this.btn5.Font = new Font( "Arial" , 14) ;
		this.btn6 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn6);
		btn6.Click += new System.EventHandler (this.btn6_Click);
		this.btn6.Top = 191 ;
		this.btn6.Left = 349 ;
		this.btn6.Width = 90 ;
		this.btn6.Height = 30 ;
		this.btn6.Text = "Cancel" ;
		int[] btn6acolorsfc = {0,0,0} ;
		this.btn6.ForeColor = System.Drawing.Color.FromArgb (btn6acolorsfc[0],btn6acolorsfc[1],btn6acolorsfc[2]);
		int[] btn6acolorsbc = {255,128,192} ;
		this.btn6.BackColor = System.Drawing.Color.FromArgb (btn6acolorsbc[0],btn6acolorsbc[1],btn6acolorsbc[2]);
		this.btn6.Font = new Font( "Arial" , 14) ;
		this.btn7 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn7);
		btn7.Click += new System.EventHandler (this.btn7_Click);
		this.btn7.Top = 243 ;
		this.btn7.Left = 228 ;
		this.btn7.Width = 60 ;
		this.btn7.Height = 30 ;
		this.btn7.Text = "Top" ;
		int[] btn7acolorsfc = {0,0,0} ;
		this.btn7.ForeColor = System.Drawing.Color.FromArgb (btn7acolorsfc[0],btn7acolorsfc[1],btn7acolorsfc[2]);
		int[] btn7acolorsbc = {0,255,128} ;
		this.btn7.BackColor = System.Drawing.Color.FromArgb (btn7acolorsbc[0],btn7acolorsbc[1],btn7acolorsbc[2]);
		this.btn7.Font = new Font( "Arial" , 14) ;
		this.btn8 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn8);
		btn8.Click += new System.EventHandler (this.btn8_Click);
		this.btn8.Top = 243 ;
		this.btn8.Left = 293 ;
		this.btn8.Width = 60 ;
		this.btn8.Height = 30 ;
		this.btn8.Text = "Prev" ;
		int[] btn8acolorsfc = {0,0,0} ;
		this.btn8.ForeColor = System.Drawing.Color.FromArgb (btn8acolorsfc[0],btn8acolorsfc[1],btn8acolorsfc[2]);
		int[] btn8acolorsbc = {0,255,128} ;
		this.btn8.BackColor = System.Drawing.Color.FromArgb (btn8acolorsbc[0],btn8acolorsbc[1],btn8acolorsbc[2]);
		this.btn8.Font = new Font( "Arial" , 14) ;
		this.btn9 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn9);
		btn9.Click += new System.EventHandler (this.btn9_Click);
		this.btn9.Top = 243 ;
		this.btn9.Left = 358 ;
		this.btn9.Width = 60 ;
		this.btn9.Height = 30 ;
		this.btn9.Text = "Next" ;
		int[] btn9acolorsfc = {0,0,0} ;
		this.btn9.ForeColor = System.Drawing.Color.FromArgb (btn9acolorsfc[0],btn9acolorsfc[1],btn9acolorsfc[2]);
		int[] btn9acolorsbc = {0,255,128} ;
		this.btn9.BackColor = System.Drawing.Color.FromArgb (btn9acolorsbc[0],btn9acolorsbc[1],btn9acolorsbc[2]);
		this.btn9.Font = new Font( "Arial" , 14) ;
		this.btn10 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn10);
		btn10.Click += new System.EventHandler (this.btn10_Click);
		this.btn10.Top = 243 ;
		this.btn10.Left = 423 ;
		this.btn10.Width = 60 ;
		this.btn10.Height = 30 ;
		this.btn10.Text = "Last" ;
		int[] btn10acolorsfc = {0,0,0} ;
		this.btn10.ForeColor = System.Drawing.Color.FromArgb (btn10acolorsfc[0],btn10acolorsfc[1],btn10acolorsfc[2]);
		int[] btn10acolorsbc = {0,255,128} ;
		this.btn10.BackColor = System.Drawing.Color.FromArgb (btn10acolorsbc[0],btn10acolorsbc[1],btn10acolorsbc[2]);
		this.btn10.Font = new Font( "Arial" , 14) ;
		this.btn11 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn11);
		btn11.Click += new System.EventHandler (this.btn11_Click);
		this.btn11.Top = 299 ;
		this.btn11.Left = 464 ;
		this.btn11.Width = 98 ;
		this.btn11.Height = 31 ;
		this.btn11.Text = "Print" ;
		int[] btn11acolorsfc = {0,0,0} ;
		this.btn11.ForeColor = System.Drawing.Color.FromArgb (btn11acolorsfc[0],btn11acolorsfc[1],btn11acolorsfc[2]);
		int[] btn11acolorsbc = {111,227,192} ;
		this.btn11.BackColor = System.Drawing.Color.FromArgb (btn11acolorsbc[0],btn11acolorsbc[1],btn11acolorsbc[2]);
		this.btn11.Font = new Font( "Arial" , 16) ;
		this.btn12 = new System.Windows.Forms.Button ( );
		this.Controls.Add (btn12);
		btn12.Click += new System.EventHandler (this.btn12_Click);
		this.btn12.Top = 299 ;
		this.btn12.Left = 567 ;
		this.btn12.Width = 105 ;
		this.btn12.Height = 32 ;
		this.btn12.Text = "Exit" ;
		int[] btn12acolorsfc = {0,0,0} ;
		this.btn12.ForeColor = System.Drawing.Color.FromArgb (btn12acolorsfc[0],btn12acolorsfc[1],btn12acolorsfc[2]);
		int[] btn12acolorsbc = {111,227,192} ;
		this.btn12.BackColor = System.Drawing.Color.FromArgb (btn12acolorsbc[0],btn12acolorsbc[1],btn12acolorsbc[2]);
		this.btn12.Font = new Font( "Arial" , 16) ;
	}
	private void win1_Click( object sender, System.EventArgs e )
	{
	}
	private void win1_Load( object sender, System.EventArgs e )
	{
		int [] acolors = {64,0,64} ;
		this.Top = 10 ;	
		this.Left = 10;
		this.Width = 704 ;
		this.Height = 399 ;
		this.Text = "Telephone " ;
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
	}
	protected void btn2_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn3_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn4_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn5_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn6_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn7_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn8_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn9_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn10_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn11_Click (  object sender, System.EventArgs e)
	{
	}
	protected void btn12_Click (  object sender, System.EventArgs e)
	{
		this.Close(  ) ;
	}
}


