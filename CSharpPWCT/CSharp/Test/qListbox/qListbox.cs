private System.Windows.Forms.ListBox list1 ;
this.list1 = new System.Windows.Forms.ListBox ( );
this.Controls.Add (list1);
list1.Click += new System.EventHandler (this.list1_Click);
list1.GotFocus += new System.EventHandler (this.list1_GotFocus);
list1.LostFocus += new System.EventHandler (this.list1_LostFocus);
this.list1.Top = 10 ;
this.list1.Left = 10 ;
this.list1.Width = 200 ;
this.list1.Height = 30 ;
this.list1.Text = " " ;
int[] list1acolorsfc = {0,0,0} ;
this.list1.ForeColor = System.Drawing.Color.FromArgb (list1acolorsfc[0],list1acolorsfc[1],list1acolorsfc[2]);
int[] list1acolorsbc = {255,255,255} ;
this.list1.BackColor = System.Drawing.Color.FromArgb (list1acolorsbc[0],list1acolorsbc[1],list1acolorsbc[2]);
this.list1.Font = new Font( "arial" , 10) ;
protected void list1_Click (  object sender, System.EventArgs e)
{
}
protected void list1_GotFocus (  object sender, System.EventArgs e)
{
}
protected void list1_LostFocus (  object sender, System.EventArgs e)
{
}


