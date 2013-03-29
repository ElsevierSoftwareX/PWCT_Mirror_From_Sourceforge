private System.Windows.Forms.TextBox edit1 ;
this.edit1 = new System.Windows.Forms.TextBox ( );
edit1.Multiline = true ;
edit1.ScrollBars = ScrollBars.Both ;
edit1.WordWrap = false ;
edit1.AcceptsReturn = true ;
this.Controls.Add (edit1);
edit1.Click += new System.EventHandler (this.edit1_Click);
edit1.GotFocus += new System.EventHandler (this.edit1_GotFocus);
edit1.LostFocus += new System.EventHandler (this.edit1_LostFocus);
this.edit1.Top = 10 ;
this.edit1.Left = 10 ;
this.edit1.Width = 200 ;
this.edit1.Height = 30 ;
this.edit1.Text = " " ;
int[] edit1acolorsfc = {0,0,0} ;
this.edit1.ForeColor = System.Drawing.Color.FromArgb (edit1acolorsfc[0],edit1acolorsfc[1],edit1acolorsfc[2]);
int[] edit1acolorsbc = {255,255,255} ;
this.edit1.BackColor = System.Drawing.Color.FromArgb (edit1acolorsbc[0],edit1acolorsbc[1],edit1acolorsbc[2]);
this.edit1.Font = new Font( "arial" , 10) ;
protected void edit1_Click (  object sender, System.EventArgs e)
{
}
protected void edit1_GotFocus (  object sender, System.EventArgs e)
{
}
protected void edit1_LostFocus (  object sender, System.EventArgs e)
{
}


