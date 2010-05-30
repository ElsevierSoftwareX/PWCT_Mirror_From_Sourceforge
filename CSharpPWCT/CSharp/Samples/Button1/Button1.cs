using System ;
using System.Drawing ;
using System.Collections ;
using System.ComponentModel ;
using System.Windows.Forms ;
using System.Data ;
public class win1 : Form
{
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
                                        this.btn1 = new System.Windows.Forms.Button ( );
                                        this.Controls.Add (btn1);
                                        btn1.Click += new System.EventHandler (this.btn1_Click);
                                        this.btn1.Top = 131 ;
                                        this.btn1.Left = 30 ;
                                        this.btn1.Width = 330 ;
                                        this.btn1.Height = 30 ;
                                        this.btn1.Text = "Wow" ;
                                        int[] btn1acolorsfc = {64,0,64} ;
                                        this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
                                        int[] btn1acolorsbc = {169,231,204} ;
                                        this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
                                        this.btn1.Font = new Font( "Arial" , 14) ;
                                        this.btn2 = new System.Windows.Forms.Button ( );
                                        this.Controls.Add (btn2);
                                        btn2.Click += new System.EventHandler (this.btn2_Click);
                                        this.btn2.Top = 198 ;
                                        this.btn2.Left = 30 ;
                                        this.btn2.Width = 330 ;
                                        this.btn2.Height = 30 ;
                                        this.btn2.Text = "Great" ;
                                        int[] btn2acolorsfc = {169,231,204} ;
                                        this.btn2.ForeColor = System.Drawing.Color.FromArgb (btn2acolorsfc[0],btn2acolorsfc[1],btn2acolorsfc[2]);
                                        int[] btn2acolorsbc = {95,70,117} ;
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
                                        this.Width = 400 ;
                                        this.Height = 400 ;
                                        this.Text = "Button 1 " ;
                                        this.BackColor = System.Drawing.Color.FromArgb (acolors[0],acolors[1],acolors[2]);
                    }
                    protected void btn1_Click (  object sender, System.EventArgs e)
                    {
                                        btn2.Text = "Message from first button" ;
                    }
                    protected void btn2_Click (  object sender, System.EventArgs e)
                    {
                                        btn1.Text = "Message from second button" ;
                    }
}


