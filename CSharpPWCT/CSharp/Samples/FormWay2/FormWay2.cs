using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
          public win1 (  )
          {
                    this.Load += new System.EventHandler( this.win1_Load );
                    this.Click += new System.EventHandler( this.win1_Click );
          }
          public static void Main ( string[] argc )
          {
                    Application.Run(  new win1() );
          }
          private void win1_Click( object sender, System.EventArgs e )
          {
          }
          private void win1_Load( object sender, System.EventArgs e )
          {
                    int [] acolors = {64,0,64} ;
                    this.Top = 0 ;	
                    this.Left = 0;
                    this.Width = 549 ;
                    this.Height = 408 ;
                    this.Text = "Hello World " ;
                    this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
          }
}


