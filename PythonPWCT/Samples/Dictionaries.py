tel = {'jack': 4098, 'sape': 4139}
tel['guido'] = 4127
print tel
print tel['jack']
del tel['sape']
tel['irv'] = 4127
print tel
myoutput = tel.keys()
print myoutput
myoutput = dict([('sape', 4139), ('guido', 4127), ('jack', 4098)])
print myoutput
myoutput = dict([(x, x*x) for x in (2, 4, 6)])
print myoutput
myoutput = tel.has_key('guido')
print myoutput
cOutput = raw_input()


