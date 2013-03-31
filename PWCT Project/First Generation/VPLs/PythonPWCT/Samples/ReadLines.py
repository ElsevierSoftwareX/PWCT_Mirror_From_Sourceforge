filehandle = open("test.txt",'r')
vOutput = filehandle.readlines()
print vOutput
for x in vOutput :
	print x
cOutput = raw_input()


