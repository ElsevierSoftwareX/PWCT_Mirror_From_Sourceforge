
  PARAMETERS p_iid,lrefreshsteps
  
  SET PROCEDURE TO CGLevel1.prg additive
  
  LOCAL oGCL1
  
  oGCL1 = CREATEOBJECT("PWCT_CGLevel1")
  
  OGCL1.UpdateCode(p_iid,lrefreshsteps)
  


