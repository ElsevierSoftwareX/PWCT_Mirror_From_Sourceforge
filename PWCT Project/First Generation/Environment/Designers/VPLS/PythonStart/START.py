def welcome():
	btn12["text"] = "very nice"
def buttonslist():
	for x in range ( 10 ):
		myarray.append("")
		myarray[x] = Button(master, text=x+1, font=("Arial", 10))
		tk_rgb = "#%02x%02x%02x" % (64,0,64)
		myarray[x]["fg"] = tk_rgb
		tk_rgb = "#%02x%02x%02x" % (0,255,128)
		myarray[x]["bg"] = tk_rgb
		myarray[x].place(x=10, y=30*(x+1) , height=25, width=100)
from Tkinter import *
from PIL import Image, ImageTk
master = Tk()
master.wm_title("Main Window")
master.geometry("909x358")
tk_rgb = "#%02x%02x%02x" %  (255,255,255)
master.config( bg = tk_rgb)
frame_1 = Toplevel()
frame_1.title("Hello World")
tk_rgb = "#%02x%02x%02x" %  (192,192,192)
frame_1.config( padx=10 , pady=10 , width = 910 , height = 409 , bg=tk_rgb )
frame_1.deiconify()
btn12 = Button(frame_1, text="Welcome", font=("Arial", 14))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
btn12["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (240,240,240)
btn12["bg"] = tk_rgb
btn12.place(x=6, y=171 , height=40, width=315)
btn12["command"] = welcome
Lbl1 = Label(frame_1, text=" Hello World ", font=("Arial", 36))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Lbl1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (0,255,128)
Lbl1["bg"] = tk_rgb
Lbl1.place(x=6, y=96 , height=64, width=315)
Btn13 = Button(frame_1, text=" Test ", font=("Arial", 14))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Btn13["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (0,255,64)
Btn13["bg"] = tk_rgb
Btn13.place(x=6, y=217 , height=30, width=315)
text1 = ""
Text1 = Entry(frame_1, text=text1, font=("Arial", 14))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Text1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
Text1["bg"] = tk_rgb
Text1.place(x=6, y=250 , height=32, width=315)
Edit1 = Text(frame_1, font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (128,128,128)
Edit1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
Edit1["bg"] = tk_rgb
Edit1.insert(INSERT, " Text Here ")
Edit1.place(x=657, y=15 , height=305, width=231)
List1frame = Frame(frame_1, bd=2, relief=SUNKEN)
List1scrollbar = Scrollbar(List1frame)
List1scrollbar.pack(side=RIGHT, fill=Y)
List1 = Listbox(List1frame , yscrollcommand=List1scrollbar.set , font=("Arial", 10) )
tk_rgb = "#%02x%02x%02x" % (0,0,0)
List1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
List1["bg"] = tk_rgb
for item in ["one","two","three","4","5","6","7","8","9"]:
	List1.insert(END, item)
List1.pack(fill=BOTH)
List1scrollbar.config(command=List1.yview)
List1frame.place(x=9, y=15 , height=74, width=311)
VariableName = IntVar()
Check1 = Checkbutton(frame_1, text="I LIKE PWCT", variable=VariableName , font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Check1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
Check1["bg"] = tk_rgb
Check1.place(x=6, y=287 , height=32, width=315)
TEMP_ITEMS = ["One",1]
RadioVariable = StringVar()
RadioVariable.set("L") # initialize
Item1 = Radiobutton(frame_1, font=("Arial", 10), text=TEMP_ITEMS[0], variable=RadioVariable, value=TEMP_ITEMS[1])
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Item1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
Item1["bg"] = tk_rgb
Item1.place(x=8, y=330 , height=30, width=200)
TEMP_ITEMS = ["Two",2]
Item2 = Radiobutton(frame_1, font=("Arial", 10), text=TEMP_ITEMS[0], variable=RadioVariable, value=TEMP_ITEMS[1])
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Item2["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
Item2["bg"] = tk_rgb
Item2.place(x=224, y=330 , height=30, width=200)
TEMP_ITEMS = ["Three",3]
Item3 = Radiobutton(frame_1, font=("Arial", 10), text=TEMP_ITEMS[0], variable=RadioVariable, value=TEMP_ITEMS[1])
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Item3["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
Item3["bg"] = tk_rgb
Item3.place(x=433, y=330 , height=32, width=457)
btn1 = Button(master, text=" My First Button ", font=("Arial", 14))
tk_rgb = "#%02x%02x%02x" % (64,0,64)
btn1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (0,255,128)
btn1["bg"] = tk_rgb
btn1.place(x=203, y=15 , height=35, width=202)
btn2 = Button(master, text=" One ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (255,255,255)
btn2["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (128,64,64)
btn2["bg"] = tk_rgb
btn2.place(x=202, y=68 , height=30, width=100)
btn3 = Button(master, text=" Two ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (255,255,255)
btn3["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (64,0,128)
btn3["bg"] = tk_rgb
btn3.place(x=246, y=131 , height=30, width=100)
btn4 = Button(master, text=" Three ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (255,255,255)
btn4["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (64,0,128)
btn4["bg"] = tk_rgb
btn4.place(x=328, y=178 , height=30, width=100)
btn5 = Button(master, text=" Four ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
btn5["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (0,255,128)
btn5["bg"] = tk_rgb
btn5.place(x=461, y=213 , height=30, width=100)
btn6 = Button(master, text=" Five ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
btn6["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (0,255,128)
btn6["bg"] = tk_rgb
btn6.place(x=562, y=272 , height=30, width=100)
btn7 = Button(master, text=" 1 ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
btn7["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (192,192,192)
btn7["bg"] = tk_rgb
btn7.place(x=427, y=68 , height=30, width=100)
btn8 = Button(master, text=" 2 ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
btn8["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (240,240,240)
btn8["bg"] = tk_rgb
btn8.place(x=534, y=108 , height=30, width=100)
btn9 = Button(master, text=" 3 ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
btn9["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,128,0)
btn9["bg"] = tk_rgb
btn9.place(x=647, y=155 , height=30, width=100)
btn10 = Button(master, text=" 4 ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
btn10["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (192,192,192)
btn10["bg"] = tk_rgb
btn10.place(x=768, y=203 , height=30, width=100)
btn11 = Button(master, text=" 5 ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
btn11["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,128,0)
btn11["bg"] = tk_rgb
btn11.place(x=679, y=272 , height=30, width=100)
myarray = []
vOutput = buttonslist()
menubar = Menu(master)
menu1 = Menu(menubar, tearoff=0)
menu1.add_command(label="New", command=welcome)
menu1.add_command(label="Open", command=welcome)
menu1.add_command(label="Save", command=welcome)
menu1.add_command(label="Save As", command=welcome)
menu1.add_command(label="Close", command=welcome)
menu1.add_separator()
menu1.add_command(label="Exit", command=welcome)
menubar.add_cascade(label="File", menu=menu1)
menu2 = Menu(menubar, tearoff=0)
menu2.add_command(label="Cut", command=welcome)
menu2.add_command(label="Copy", command=welcome)
menu2.add_command(label="Paste", command=welcome)
menubar.add_cascade(label="Edit", menu=menu2)
menu3 = Menu(menubar, tearoff=0)
menu3.add_command(label="About", command=welcome)
menu3.add_command(label="Team", command=welcome)
menubar.add_cascade(label="Help", menu=menu3)
master.config(menu=menubar)
mainloop()
print "Hello World "
for x in range ( 10 ):
	if x == 3 :
		print " this is number three "
	print x
vOutput = raw_input()

