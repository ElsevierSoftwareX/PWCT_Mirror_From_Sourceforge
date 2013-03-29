public class win1 : Form
{
          private System.Windows.Forms.Label lbl2 ;
          public static void Main ( string[] argc )
          {
                    Application.Run(  new win1() );
          }
          public win1 (  )
          {
                    this.Load += new System.EventHandler( this.win1_Load );
                    this.Click += new System.EventHandler( this.win1_Click );
                    this.lbl2 = new System.Windows.Forms.Label ( );
                    this.Controls.Add (lbl2);
                    lbl2.Click += new System.EventHandler (this.lbl2_Click);
                    this.lbl2.Top = 10 ;
                    this.lbl2.Left = 10 ;
                    this.lbl2.Width = 200 ;
                    this.lbl2.Height = 30 ;
                    this.lbl2.Text = "Welcome" ;
                    int[] lbl2acolorsfc = {0,0,0} ;
                    this.lbl2.ForeColor = System.Drawing.Color.FromArgb (lbl2acolorsfc[0],lbl2acolorsfc[1],lbl2acolorsfc[2]);
                    int[] lbl2acolorsbc = {255,255,255} ;
                    this.lbl2.BackColor = System.Drawing.Color.FromArgb (lbl2acolorsbc[0],lbl2acolorsbc[1],lbl2acolorsbc[2]);
                    this.lbl2.Font = new Font( "Arial" , 10) ;
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
                    this.Text = " " ;
                    this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
          }
          protected void lbl2_Click (  object sender, System.EventArgs e)
          {
          }
}


