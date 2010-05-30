private System.Windows.Forms.TextBox text1 ;
this.text1 = new System.Windows.Forms.TextBox ( );
this.Controls.Add (text1);
text1.Click += new System.EventHandler (this.text1_Click);
text1.GotFocus += new System.EventHandler (this.text1_GotFocus);
text1.LostFocus += new System.EventHandler (this.text1_LostFocus);
this.text1.Top = 10 ;
this.text1.Left = 10 ;
this.text1.Width = 200 ;
this.text1.Height = 30 ;
this.text1.Text = " " ;
int[] text1acolorsfc = {0,0,0} ;
this.text1.ForeColor = System.Drawing.Color.FromArgb (text1acolorsfc[0],text1acolorsfc[1],text1acolorsfc[2]);
int[] text1acolorsbc = {255,255,255} ;
this.text1.BackColor = System.Drawing.Color.FromArgb (text1acolorsbc[0],text1acolorsbc[1],text1acolorsbc[2]);
this.text1.Font = new Font( "arial" , 10) ;
protected void text1_Click (  object sender, System.EventArgs e)
{
}
protected void text1_GotFocus (  object sender, System.EventArgs e)
{
}
protected void text1_LostFocus (  object sender, System.EventArgs e)
{
}


