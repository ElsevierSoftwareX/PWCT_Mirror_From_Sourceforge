PARAMETERS mymsg
win_mssf.oToolbar3.timer1.enabled = .f.
win_mssf.oToolbar3.wwstatusbar1.Panels(1).Text  = mymsg
win_mssf.oToolbar3.wwstatusbar1.renderpanel(1)
win_mssf.oToolbar3.timer1.enabled = .t.

DIMENSION pwct_StatusMsgs(ALEN(pwct_StatusMsgs,1)+1)
pwct_StatusMsgs(ALEN(pwct_StatusMsgs,1)) = mymsg
