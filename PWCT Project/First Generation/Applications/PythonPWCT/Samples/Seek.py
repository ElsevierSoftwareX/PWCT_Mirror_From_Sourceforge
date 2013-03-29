filehandle = open("test.txt",'r')
for x in range ( 4,10 ):
	filehandle.seek(x)
	vOutput = filehandle.read(1)
	print vOutput
cOutput = raw_input()


