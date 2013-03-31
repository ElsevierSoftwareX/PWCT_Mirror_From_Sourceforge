import pickle
mystr = "this is a string"
filehandle = open("pickle.txt",'r+')
print "Dump..... "
pickle.dump(mystr, filehandle)
filehandle.close()
filehandle = open("pickle.txt",'r+')
print "Load....."
mystr2 = pickle.load(filehandle)
filehandle.close()
print mystr2
vOutput = raw_input()


