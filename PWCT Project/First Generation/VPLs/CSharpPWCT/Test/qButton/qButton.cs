private System.Windows.Forms.Button btn1 ;
this.btn1 = new System.Windows.Forms.Button ( );
this.Controls.Add (btn1);
btn1.Click += new System.EventHandler (this.btn1_Click);
this.btn1.Top = 10 ;
this.btn1.Left = 10 ;
this.btn1.Width = 200 ;
this.btn1.Height = 30 ;
this.btn1.Text = " " ;
int[] btn1acolorsfc = {0,0,0} ;
this.btn1.ForeColor = System.Drawing.Color.FromArgb (btn1acolorsfc[0],btn1acolorsfc[1],btn1acolorsfc[2]);
int[] btn1acolorsbc = {255,255,255} ;
this.btn1.BackColor = System.Drawing.Color.FromArgb (btn1acolorsbc[0],btn1acolorsbc[1],btn1acolorsbc[2]);
this.btn1.Font = new Font( "arial" , 10) ;
protected void btn1_Click (  object sender, System.EventArgs e)
{
}


