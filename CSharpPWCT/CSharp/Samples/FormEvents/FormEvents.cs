using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
          public static void Main ( string[] argc )
          {
                    Application.Run(  new win1() );
          }
          public win1 (  )
          {
                    this.Load += new System.EventHandler( this.win1_Load );
                    this.Click += new System.EventHandler( this.win1_Click );
          }
          private void win1_Click( object sender, System.EventArgs e )
          {
                    this.Text = "Form was pressed" ;
          }
          private void win1_Load( object sender, System.EventArgs e )
          {
                    int [] acolors = {255,255,255} ;
                    this.Top = 10 ;	
                    this.Left = 10;
                    this.Width = 400 ;
                    this.Height = 400 ;
                    this.Text = " Form Events - Click The Form" ;
                    this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
          }
}


