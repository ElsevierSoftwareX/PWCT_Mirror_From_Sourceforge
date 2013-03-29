private System.Windows.Forms.Label lbl1 ;
this.lbl1 = new System.Windows.Forms.Label ( );
this.Controls.Add (lbl1);
lbl1.Click += new System.EventHandler (this.lbl1_Click);
this.lbl1.Top = 10 ;
this.lbl1.Left = 10 ;
this.lbl1.Width = 200 ;
this.lbl1.Height = 30 ;
this.lbl1.Text = " " ;
int[] lbl1acolorsfc = {0,0,0} ;
this.lbl1.ForeColor = System.Drawing.Color.FromArgb (lbl1acolorsfc[0],lbl1acolorsfc[1],lbl1acolorsfc[2]);
int[] lbl1acolorsbc = {255,255,255} ;
this.lbl1.BackColor = System.Drawing.Color.FromArgb (lbl1acolorsbc[0],lbl1acolorsbc[1],lbl1acolorsbc[2]);
this.lbl1.Font = new Font( "arial" , 10) ;
protected void lbl1_Click (  object sender, System.EventArgs e)
{
}


