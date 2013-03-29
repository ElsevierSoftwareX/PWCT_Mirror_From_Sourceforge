filehandle = open("test.txt",'r')
for x in range ( 14 ):
	vOutput = filehandle.read(1)
	print vOutput
cOutput = raw_input()


