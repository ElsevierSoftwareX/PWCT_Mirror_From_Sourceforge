function openpwctwebsite (  ) {
	var answer ;
	answer = confirm ( "Open PWCT Website ? " ) ;
	if ( answer )
	{
		window.location = "http://www.pwct.org" ;
	}
}
function welcome (  ) {
	var oPerson ;
	oPerson = {
	name: "Mahmoud " ,
	age: 27 
	} ;
	alert ( "My name is " + oPerson["name"] ) ;
	alert ( "My age is " + oPerson["age"] ) ;
}
