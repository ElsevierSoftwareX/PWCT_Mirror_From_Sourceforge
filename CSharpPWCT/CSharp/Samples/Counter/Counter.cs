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
          private System.Windows.Forms.TextBox text1 ;
          private System.Windows.Forms.TextBox text2 ;
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
                    this.lbl1 = new System.Windows.Forms.Label ( );
                    this.Controls.Add (lbl1);
                    lbl1.Click += new System.EventHandler (this.lbl1_Click);
                    this.lbl1.Top = 75 ;
                    this.lbl1.Left = 40 ;
                    this.lbl1.Width = 60 ;
                    this.lbl1.Height = 30 ;
                    this.lbl1.Text = "To" ;
                    int[] lbl1acolorsfc = {0,0,0} ;
                    this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
                    int[] lbl1acolorsbc = {132,242,179} ;
                    this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
                    this.lbl1.Font = new Font( "Arial" , 14) ;
                    this.lbl2 = new System.Windows.Forms.Label ( );
                    this.Controls.Add (lbl2);
                    lbl2.Click += new System.EventHandler (this.lbl2_Click);
                    this.lbl2.Top = 30 ;
                    this.lbl2.Left = 40 ;
                    this.lbl2.Width = 70 ;
                    this.lbl2.Height = 30 ;
                    this.lbl2.Text = "From" ;
                    int[] lbl2acolorsfc = {0,0,0} ;
                    this.lbl2.ForeColor = System.Drawing.Color.FromArgb (lbl2acolorsfc[0],lbl2acolorsfc[1],lbl2acolorsfc[2]);
                    int[] lbl2acolorsbc = {132,242,179} ;
                    this.lbl2.BackColor = System.Drawing.Color.FromArgb (lbl2acolorsbc[0],lbl2acolorsbc[1],lbl2acolorsbc[2]);
                    this.lbl2.Font = new Font( "Arial" , 14) ;
                    this.text1 = new System.Windows.Forms.TextBox ( );
                    this.Controls.Add (text1);
                    text1.Click += new System.EventHandler (this.text1_Click);
                    text1.GotFocus += new System.EventHandler (this.text1_GotFocus);
                    text1.LostFocus += new System.EventHandler (this.text1_LostFocus);
                    this.text1.Top = 27 ;
                    this.text1.Left = 149 ;
                    this.text1.Width = 200 ;
                    this.text1.Height = 30 ;
                    this.text1.Text = "1" ;
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
                    this.text2.Top = 76 ;
                    this.text2.Left = 149 ;
                    this.text2.Width = 200 ;
                    this.text2.Height = 30 ;
                    this.text2.Text = "10" ;
                    int[] text2acolorsfc = {0,0,0} ;
                    this.text2.ForeColor = System.Drawing.Color.FromArgb (text2acolorsfc[0],text2acolorsfc[1],text2acolorsfc[2]);
                    int[] text2acolorsbc = {255,255,255} ;
                    this.text2.BackColor = System.Drawing.Color.FromArgb (text2acolorsbc[0],text2acolorsbc[1],text2acolorsbc[2]);
                    this.text2.Font = new Font( "Arial" , 14) ;
                    this.list1 = new System.Windows.Forms.ListBox ( );
                    this.Controls.Add (list1);
                    list1.Click += new System.EventHandler (this.list1_Click);
                    list1.GotFocus += new System.EventHandler (this.list1_GotFocus);
                    list1.LostFocus += new System.EventHandler (this.list1_LostFocus);
                    this.list1.Top = 117 ;
                    this.list1.Left = 40 ;
                    this.list1.Width = 308 ;
                    this.list1.Height = 173 ;
                    this.list1.Text = " " ;
                    int[] list1acolorsfc = {0,0,0} ;
                    this.list1.ForeColor = System.Drawing.Color.FromArgb (list1acolorsfc[0],list1acolorsfc[1],list1acolorsfc[2]);
                    int[] list1acolorsbc = {255,255,255} ;
                    this.list1.BackColor = System.Drawing.Color.FromArgb (list1acolorsbc[0],list1acolorsbc[1],list1acolorsbc[2]);
                    this.list1.Font = new Font( "Arial" , 14) ;
                    this.btn1 = new System.Windows.Forms.Button ( );
                    this.Controls.Add (btn1);
                    btn1.Click += new System.EventHandler (this.btn1_Click);
                    this.btn1.Top = 304 ;
                    this.btn1.Left = 95 ;
                    this.btn1.Width = 200 ;
                    this.btn1.Height = 30 ;
                    this.btn1.Text = "Count" ;
                    int[] btn1acolorsfc = {0,0,0} ;
                    this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
                    int[] btn1acolorsbc = {255,255,255} ;
                    this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
                    this.btn1.Font = new Font( "Arial" , 14) ;
          }
          private void win1_Click( object sender, System.EventArgs e )
          {
          }
          private void win1_Load( object sender, System.EventArgs e )
          {
                    int [] acolors = {132,242,179} ;
                    this.Top = 10 ;	
                    this.Left = 10;
                    this.Width = 400 ;
                    this.Height = 400 ;
                    this.Text = "Counter " ;
                    this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
          }
          protected void lbl1_Click (  object sender, System.EventArgs e)
          {
          }
          protected void lbl2_Click (  object sender, System.EventArgs e)
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
                    int num1 ;
                    int num2 ;
                    string cnum1 ;
                    string cnum2 ;
                    cnum1 = text1.Text ;
                    cnum2 = text2.Text ;
                    num1 = Int32.Parse( cnum1 );
                    num2 = Int32.Parse( cnum2 );
                    for ( int x = num1 ; x <= num2 ; x++ )
                    {
                              list1.Items.Add( x ) ;
                    }
          }
}


