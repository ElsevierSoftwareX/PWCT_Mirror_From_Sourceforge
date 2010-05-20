How to distribute delivery application as EXE File ?

1 - Run nova.exe
2 - Select "Delivery.nova"
    This will generate the object file "Delivery.nova.star"
3 - Rename file "Delivery.nova.star" to "Delivery.star"
4 - copy file "nova.exe" to delivery folder
5 - rename file "nova.exe" to "Delivery.exe"

Now you can distribute (Delivery.exe + Delivery.star)

---------------------------------------------------------------

What is the difference between Delivery.nova and Delivery2.nova ?

1 - Delivery2 uses interactive search (NO SEARCH BUTTON)

2 - Changes in Delivery.txt generation code
    From :-
		[myitem]. = [myarray]\[x].
		[mystr]. = "(
			Delivery Application 
-------------------------------------------------------------------
Date  :) thedate  (
Time  :) thetime  (
Month :) themonth (
Day   :) theday   (
Item  :---------------> ) [myitem] (
-------------------------------------------------------------------)"
		[mystr]. memory to file "(delivery.txt)"

   To :-

	"(
			Delivery Application 
-------------------------------------------------------------------
Date  :) thedate  (
Time  :) thetime  (
Month :) themonth (
Day   :) theday   (
Item  :---------------> ) [myarray]\[x] (
-------------------------------------------------------------------)"
		memory to file "(delivery.txt)"