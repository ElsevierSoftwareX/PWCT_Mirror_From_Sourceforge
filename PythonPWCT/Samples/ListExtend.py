list1 = []
list2 = []
list1.append(1)
list1.append(2)
list1.append(3)
list2.append(4)
list2.append(5)
list2.append(6)
list1.extend(list2)
list2.extend(list1)
for x in list1 :
	print x
print "*******************"
for x in list2 :
	print x
cOutput = raw_input()


