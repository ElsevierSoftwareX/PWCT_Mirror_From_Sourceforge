This is a guide about how to build a library and use it
Also this is useful when you want to build a big project
With many files.

The first server : MYLIB.SSF (The Library)

1 - Goto Server Units Window
2 - Expand the window by clicking ">" button
3 - Select the compile tab
4 - The checkbox "Server Extension" value is TRUE
5 - Click "Generate" button to get MYLIB.PRG
And that is all.

The Second server : LIBCALL.SSF (The Library test)

1 - Inside goal designer
2 - Domain : Structure Programming
3 - Component Name : Set Procedure to
4 - write "MYLIB.PRG" in interaction using transporter window
5 - Now you can call any procedures inside the library 
    Example : Call Procedure myfunc 
    Domain : Structure Programming Component : Call Procedure
    


