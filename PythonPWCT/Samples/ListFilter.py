def myfilter(p1):
	return p1 > 3
List1 = []
List1.append(1)
List1.append(2)
List1.append(3)
List1.append(4)
List1.append(5)
myoutput = filter(myfilter,List1)
for x in myoutput :
	print x
cOutput = raw_input()


