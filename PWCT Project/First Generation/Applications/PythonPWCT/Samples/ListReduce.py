def myreduce(p1,p2):
	return p1 + p2
List1 = []
List1.append(1)
List1.append(2)
List1.append(3)
List1.append(4)
List1.append(5)
List1.append(6)
myoutput = reduce(myreduce,List1)
print myoutput
cOutput = raw_input()


