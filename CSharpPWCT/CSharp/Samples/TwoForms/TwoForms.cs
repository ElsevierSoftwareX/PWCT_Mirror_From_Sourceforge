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
                    win2 win2obj = new win2() ;
                    win2obj.Show(  ) ;
          }
          private void win1_Load( object sender, System.EventArgs e )
          {
                    int [] acolors = {64,0,64} ;
                    this.Top = 10 ;	
                    this.Left = 10;
                    this.Width = 400 ;
                    this.Height = 400 ;
                    this.Text = "Hello " ;
                    this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
          }
}
public class win2 : Form
{
          public win2 (  )
          {
                    this.Load += new System.EventHandler( this.win2_Load );
                    this.Click += new System.EventHandler( this.win2_Click );
          }
          private void win2_Click( object sender, System.EventArgs e )
          {
          }
          private void win2_Load( object sender, System.EventArgs e )
          {
                    int [] acolors = {169,231,204} ;
                    this.Top = 10 ;	
                    this.Left = 10;
                    this.Width = 596 ;
                    this.Height = 230 ;
                    this.Text = " Welcome " ;
                    this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
          }
}


