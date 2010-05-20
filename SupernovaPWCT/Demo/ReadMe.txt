In config.txt
you determine the source code file and how to build the application

output: demo.nova
build: c:\ssbuild\supernova\novarun demo

The first line determine the source code file to be demo.nova
While the second line use novarun.bat to call the nova.exe demo.nova

This will generate demo.nova.star

to distribute this demo to others as executable file 

1 - rename demo.nova.star to demo.star
2 - copy nova.exe from c:\ssbuild\supernova to the demo folder
3 - rename nova.exe to demo.exe

So when you run demo.exe it will open demo.star and load/run it.



