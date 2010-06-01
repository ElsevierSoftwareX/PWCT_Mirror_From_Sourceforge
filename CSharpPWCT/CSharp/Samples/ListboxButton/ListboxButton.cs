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
                    this.list1.Top = 21 ;
                    this.list1.Left = 41 ;
                    this.list1.Width = 311 ;
                    this.list1.Height = 269 ;
                    this.list1.Text = " " ;
                    int[] list1acolorsfc = {0,0,0} ;
                    this.list1.ForeColor = System.Drawing.Color.FromArgb (list1acolorsfc[0],list1acolorsfc[1],list1acolorsfc[2]);
                    int[] list1acolorsbc = {0,255,128} ;
                    this.list1.BackColor = System.Drawing.Color.FromArgb (list1acolorsbc[0],list1acolorsbc[1],list1acolorsbc[2]);
                    this.list1.Font = new Font( "Arial" , 14) ;
                    this.btn1 = new System.Windows.Forms.Button ( );
                    this.Controls.Add (btn1);
                    btn1.Click += new System.EventHandler (this.btn1_Click);
                    this.btn1.Top = 317 ;
                    this.btn1.Left = 95 ;
                    this.btn1.Width = 200 ;
                    this.btn1.Height = 30 ;
                    this.btn1.Text = "Count from 1 to 10" ;
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
                    int [] acolors = {64,0,64} ;
                    this.Top = 10 ;	
                    this.Left = 10;
                    this.Width = 400 ;
                    this.Height = 415 ;
                    this.Text = "Listbox And Button " ;
                    this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
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
                    for ( int x = 1 ; x <= 10 ; x++ )
                    {
                              list1.Items.Add( x ) ;
                    }
          }
}


