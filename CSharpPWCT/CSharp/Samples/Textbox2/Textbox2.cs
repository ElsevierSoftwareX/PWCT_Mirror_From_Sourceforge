using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
          private System.Windows.Forms.TextBox text1 ;
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
                    this.text1.Top = 10 ;
                    this.text1.Left = 10 ;
                    this.text1.Width = 200 ;
                    this.text1.Height = 30 ;
                    this.text1.Text = " Welcome !! " ;
                    int[] text1acolorsfc = {0,0,0} ;
                    this.text1.ForeColor = System.Drawing.Color.FromArgb (text1acolorsfc[0],text1acolorsfc[1],text1acolorsfc[2]);
                    int[] text1acolorsbc = {255,255,255} ;
                    this.text1.BackColor = System.Drawing.Color.FromArgb (text1acolorsbc[0],text1acolorsbc[1],text1acolorsbc[2]);
                    this.text1.Font = new Font( "arial" , 10) ;
          }
          private void win1_Click( object sender, System.EventArgs e )
          {
          }
          private void win1_Load( object sender, System.EventArgs e )
          {
                    int [] acolors = {255,255,255} ;
                    this.Top = 10 ;	
                    this.Left = 10;
                    this.Width = 400 ;
                    this.Height = 400 ;
                    this.Text = "Hello World " ;
                    this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
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
}


