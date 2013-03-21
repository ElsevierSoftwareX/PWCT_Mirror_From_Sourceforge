DEFINE CLASS GD_StepsColors as Custom

* 1 = All of the steps are Black & White (No more colors)
* 2 = Colors based on the step type (Created , Generated (Root) , Generated (Allow sub) , Generated )
* 3 = Custom (Colors based on component rules ) we advice the component designer to select the colors based on the component type

nColorSystem = 1

PROCEDURE SetStepColor(objGDWindow)
	objGDWindow.container1.oletree.selectedItem.backcolor = RGB(255,0,0)
  objGDWindow.container1.oletree.selectedItem.ForeColor = RGB(0,0,0)
RETURN

ENDDEFINE