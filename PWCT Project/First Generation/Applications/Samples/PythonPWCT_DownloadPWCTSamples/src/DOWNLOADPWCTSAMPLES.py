import urllib
import time
import os
def MyClose():
	vOutput = os._exit(0)
def MyHook(p1,p2,p3):
	vOutput = master.update()
def MyDownload():
	mymax = len(Samples)
	vOutput = List1.insert(0,"Number of samples : " + str(mymax))
	for x in range ( mymax ):
		vOutput = List1.insert(x+1,"[" + str(x+1) + "] Downloading File : " + Samples[x])
		vOutput = master.update()
		mycheck = os.path.isfile("../samples/"+Samples[x])
		if mycheck == 0 :
			vOutput = urllib.urlretrieve(WebLink+Samples[x]+LinkEnd,"../samples/"+Samples[x],MyHook)
WebLink = "http://sourceforge.net/projects/doublesvsoop/files/PWCT%20For%20MS-Windows/PWCT%201.8%20%28Smart%29/Samples/"
LinkEnd = "/download"
Samples = []
Samples.append("HarbourPWCT_NumGame.zip")
Samples.append("HarbourPWCT_ComboboxItemsFromArray.zip")
Samples.append("HarbourPWCT_ImageToStream.zip")
Samples.append("HarbourPWCT_ListboxAndButton.zip")
Samples.append("HarbourPWCT_ListboxItemsFromArray.zip")
Samples.append("HarbourPWCT_MoveWIndow.zip")
Samples.append("HarbourPWCT_MoveWindowUsingKeyboard.zip")
Samples.append("HarbourPWCT_RandomWindowBackcolor.zip")
Samples.append("HarbourPWCT_RightToLeftControls.zip")
Samples.append("HarbourPWCT_TreeManager.zip")
Samples.append("HarbourPWCT_SelectWindowBackcolor.zip")
Samples.append("HarbourPWCT_DateInformation.zip")
Samples.append("HarbourPWCT_ColorMixer.zip")
Samples.append("HarbourPWCT_ProgressbarAndTimer.zip")
Samples.append("HarbourPWCT_SimpleLogin_IFELSEIFStatement.zip")
Samples.append("HarbourPWCT_SimpleLogin_IFStatement.zip")
Samples.append("HarbourPWCT_TimerToAnimation.zip")
Samples.append("HarbourPWCT_TimerToAnimation2.zip")
Samples.append("HarbourPWCT_TwoWindowsMainModal.zip")
Samples.append("HarbourPWCT_TwoWindowsMainChild.zip")
Samples.append("HarbourPWCT_SumTextboxCombobox.zip")
Samples.append("HarbourPWCT_AdvancedCounter.zip")
Samples.append("HarbourPWCT_SimpleNotepad.zip")
Samples.append("HarbourPWCT_CopyAndRenameFiles.zip")
Samples.append("HarbourPWCT_AutomaticCounter.zip")
Samples.append("HarbourPWCT_Birthday.zip")
Samples.append("HarbourPWCT_Birthday2.zip")
Samples.append("HarbourPWCT_Counter.zip")
Samples.append("HarbourPWCT_CreateDynamicForm.zip")
Samples.append("HarbourPWCT_HideGame.zip")
Samples.append("HarbourPWCT_Insurance.zip")
Samples.append("HarbourPWCT_MaximumNumber.zip")
Samples.append("HarbourPWCT_MoneyInterest.zip")
Samples.append("HarbourPWCT_Percentage.zip")
Samples.append("HarbourPWCT_Question.zip")
Samples.append("HarbourPWCT_RectangularArea.zip")
Samples.append("HarbourPWCT_ShowMessage.zip")
Samples.append("HarbourPWCT_SimpleCalcualtor.zip")
Samples.append("HarbourPWCT_SimplePhone.zip")
Samples.append("HarbourPWCT_Welcome.zip")
Samples.append("HarbourPWCT_VerySimpleCalculator.zip")
Samples.append("HarbourPWCT_UsingADO1.zip")
Samples.append("HarbourPWCT_UsingADO2.zip")
Samples.append("HarbourPWCT_UsingADO3.zip")
Samples.append("HarbourPWCT_UsingADO4.zip")
Samples.append("HarbourPWCT_UsingADO5.zip")
Samples.append("HarbourPWCT_UsingADO6.zip")
Samples.append("HarbourPWCT_CenterWindow.zip")
Samples.append("HarbourPWCT_WindowControls.zip")
Samples.append("HarbourPWCT_ControlsEvents.zip")
Samples.append("HarbourPWCT_ADOSQL1.zip")
Samples.append("HarbourPWCT_ADOSQL2.zip")
Samples.append("HarbourPWCT_ADOSQL3.zip")
Samples.append("HarbourPWCT_AgeCalculation.zip")
Samples.append("HarbourPWCT_Average.zip")
Samples.append("HarbourPWCT_EndOfEditbox.zip")
Samples.append("HarbourPWCT_LetterbyLetter.zip")
Samples.append("HarbourPWCT_HelloLily.zip")
Samples.append("HarbourPWCT_ManyGridHeaders.zip")
Samples.append("HarbourPWCT_Notepad.zip")
Samples.append("HarbourPWCT_ShellExplorer.zip")
Samples.append("HarbourPWCT_ShowPDF.zip")
Samples.append("HarbourPWCT_TimeInformation.zip")
Samples.append("HarbourPWCT_ClassesAndObjects3.zip")
Samples.append("HarbourPWCT_ClassesAndObjects2.zip")
Samples.append("HarbourPWCT_ClassesAndObjects1.zip")
Samples.append("HarbourPWCT_UsingTemplates1.zip")
Samples.append("HarbourPWCT_UsingTemplates2.zip")
Samples.append("HarbourPWCT_UsingTemplates3.zip")
Samples.append("HarbourPWCT_UsingTemplates4.zip")
Samples.append("HarbourPWCT_UsingTemplates5.zip")
Samples.append("HarbourPWCT_UsingTemplates6.zip")
Samples.append("HarbourPWCT_UsingTemplates7.zip")
Samples.append("HarbourPWCT_UsingTemplates8.zip")
Samples.append("HarbourPWCT_UsingTemplates9.zip")
Samples.append("HarbourPWCT_UsingTemplates10.zip")
Samples.append("HarbourPWCT_UsingTemplates11.zip")
Samples.append("HarbourPWCT_UsingTemplates12.zip")
Samples.append("HarbourPWCT_UsingTemplates13.zip")
Samples.append("HarbourPWCT_UsingTemplates14.zip")
Samples.append("HarbourPWCT_UsingTemplates15.zip")
Samples.append("HarbourPWCT_UsingTemplates16.zip")
Samples.append("HarbourPWCT_UsingTemplates17.zip")
Samples.append("HarbourPWCT_UsingTemplates18.zip")
Samples.append("HarbourPWCT_DevelopingLargeApplications.zip")
Samples.append("HarbourPWCT_Templates.zip")
Samples.append("HarbourPWCT_SupernovaProgrammingLanguage.zip")
Samples.append("SupernovaPWCT_ClickLoop.zip")
Samples.append("SupernovaPWCT_Counter2.zip")
Samples.append("SupernovaPWCT_Counter.zip")
Samples.append("SupernovaPWCT_DownCounter.zip")
Samples.append("SupernovaPWCT_Math.zip")
Samples.append("SupernovaPWCT_Question.zip")
Samples.append("SupernovaPWCT_UpCounter.zip")
Samples.append("SupernovaPWCT_Shutdown.zip")
Samples.append("HarbourPWCT_YahooLogin_GUIApplication.zip")
Samples.append("HarbourPWCT_WhileLoop_ConsoleApplication.zip")
Samples.append("HarbourPWCT_TwoDimArray_GUIApplication.zip")
Samples.append("HarbourPWCT_TryCatch_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Tree_GUIApplication.zip")
Samples.append("HarbourPWCT_TransparentWindow_GUIApplication.zip")
Samples.append("HarbourPWCT_Toolbar_GUIApplication.zip")
Samples.append("HarbourPWCT_TotalCost_GUIApplication.zip")
Samples.append("HarbourPWCT_TextboxFormat_GUIApplication.zip")
Samples.append("HarbourPWCT_Timer_GUIApplication.zip")
Samples.append("HarbourPWCT_TestCreator_GUIApplication.zip")
Samples.append("HarbourPWCT_Textbox_GUIApplication.zip")
Samples.append("HarbourPWCT_Tab_GUIApplication.zip")
Samples.append("HarbourPWCT_TelephoneDatabase_ConsoleApplication.zip")
Samples.append("HarbourPWCT_SoundPlayerRecorder_GUIApplication.zip")
Samples.append("HarbourPWCT_Strings_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Spinner_GUIApplication.zip")
Samples.append("HarbourPWCT_Slider_GUIApplication.zip")
Samples.append("HarbourPWCT_Richeditbox_GUIApplication.zip")
Samples.append("HarbourPWCT_ReadFile_ConsoleApplication.zip")
Samples.append("HarbourPWCT_RadioGroup_GUIApplication.zip")
Samples.append("HarbourPWCT_Progressbar_GUIApplication.zip")
Samples.append("HarbourPWCT_PrintText_GUIApplication.zip")
Samples.append("HarbourPWCT_Printing_GUIApplication.zip")
Samples.append("HarbourPWCT_Phone_GUIApplication.zip")
Samples.append("HarbourPWCT_OOP_ConsoleApplication.zip")
Samples.append("HarbourPWCT_OLE_GUIApplication.zip")
Samples.append("HarbourPWCT_OnKey_GUIApplication.zip")
Samples.append("HarbourPWCT_MultiWins_GUIApplications.zip")
Samples.append("HarbourPWCT_MoviePlayer_GUIApplication.zip")
Samples.append("HarbourPWCT_MovableLabel_GUIApplication.zip")
Samples.append("HarbourPWCT_Menubar_GUIApplication.zip")
Samples.append("HarbourPWCT_Memo_ConsoleApplication.zip")
Samples.append("HarbourPWCT_LogicalOperations_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Macro_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Listbox_GUIApplication.zip")
Samples.append("HarbourPWCT_Library_ConsoleApplication.zip")
Samples.append("HarbourPWCT_ImageResize_GUIApplication.zip")
Samples.append("HarbourPWCT_Label_GUIApplication.zip")
Samples.append("HarbourPWCT_IFStatement_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Image_GUIApplication.zip")
Samples.append("HarbourPWCT_HTTP_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Hyperlink_GUIApplication.zip")
Samples.append("HarbourPWCT_HTML2SQL_GUIApplication.zip")
Samples.append("HarbourPWCT_HelloWorld_GUIApplication.zip")
Samples.append("HarbourPWCT_Gradient_GUIApplication.zip")
Samples.append("HarbourPWCT_Grid_GUIApplication.zip")
Samples.append("HarbourPWCT_HelloWorld_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Framework_GUIApplication.zip")
Samples.append("HarbourPWCT_FunctionsAndProcedures_ConsoleApplication.zip")
Samples.append("HarbourPWCT_FormShot_GUIApplication.zip")
Samples.append("HarbourPWCT_Frame_GUIApplication.zip")
Samples.append("HarbourPWCT_Flash_GUIApplication.zip")
Samples.append("HarbourPWCT_ForLoop_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Expressions_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Editbox_GUIApplication.zip")
Samples.append("HarbourPWCT_DynamicObjects_GUIApplication.zip")
Samples.append("HarbourPWCT_Drawing_GUIApplication.zip")
Samples.append("HarbourPWCT_DLL_ConsoleApplication.zip")
Samples.append("HarbourPWCT_DatePicker_GUIApplication.zip")
Samples.append("HarbourPWCT_Customers_GUIApplication.zip")
Samples.append("HarbourPWCT_CreateTable_ConsoleApplication.zip")
Samples.append("HarbourPWCT_CreateFile_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Conversion_ConsoleApplication.zip")
Samples.append("HarbourPWCT_CloseWindow_GUIApplication.zip")
Samples.append("HarbourPWCT_Combobox_GUIApplication.zip")
Samples.append("HarbourPWCT_Checkbutton_GUIApplication.zip")
Samples.append("HarbourPWCT_Checkbox_GUIApplication.zip")
Samples.append("HarbourPWCT_Calculator_GUIApplication.zip")
Samples.append("HarbourPWCT_Button_GUIApplication.zip")
Samples.append("HarbourPWCT_Browse_GUIApplication.zip")
Samples.append("HarbourPWCT_Boom_GUIApplication.zip")
Samples.append("HarbourPWCT_BarcodeFont_GUIApplication.zip")
Samples.append("HarbourPWCT_AutoAdjust_GUIApplication.zip")
Samples.append("HarbourPWCT_ASCII_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Arrays_ConsoleApplication.zip")
Samples.append("HarbourPWCT_ArithmeticOperations_ConsoleApplication.zip")
Samples.append("HarbourPWCT_ADODB_GUIApplication.zip")
Samples.append("HarbourPWCT_Animatebox_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_RMChart_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_TwoTabsTwoActiveX_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_PolarCryptoLight_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_PolarZipLight_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_GIF89_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_InternetExplorer_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_CrystalReports10_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_ActiveSkin_GUIApplication.zip")
Samples.append("HarbourPWCT_ActiveX_ADO_GUIApplication.zip")
Samples.append("HarbourPWCT_Menus_ConsoleApplication.zip")
Samples.append("HarbourPWCT_GetInput_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Variables_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Colors_ConsoleApplication.zip")
Samples.append("HarbourPWCT_Rectangles_ConsoleAppplication.zip")
from Tkinter import *
from PIL import Image, ImageTk
master = Tk()
master.wm_title("Download PWCT Samples")
master.geometry("644x287")
tk_rgb = "#%02x%02x%02x" %  (64,0,64)
master.config( bg = tk_rgb)
menubar = Menu(master)
menu1 = Menu(menubar, tearoff=0)
menu1.add_command(label="Download", command=MyDownload)
menu1.add_command(label="Exit", command=MyClose)
menubar.add_cascade(label="File", menu=menu1)
master.config(menu=menubar)
image1 = Label(master)
temp_image = Image.open("back.JPG")
temp_photo = ImageTk.PhotoImage(temp_image)
image1['image'] = temp_photo
image1.place(  x=0, y=-10 , height=310, width=690)
List1frame = Frame(master, bd=2, relief=SUNKEN)
List1scrollbar = Scrollbar(List1frame)
List1scrollbar.pack(side=RIGHT, fill=Y)
List1 = Listbox(List1frame , yscrollcommand=List1scrollbar.set , font=("Arial", 10) )
tk_rgb = "#%02x%02x%02x" % (0,0,0)
List1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
List1["bg"] = tk_rgb
for item in [""]:
	List1.insert(END, item)
List1.pack(fill=BOTH)
List1scrollbar.config(command=List1.yview)
List1frame.place(x=8, y=19 , height=174, width=619)
Btn1 = Button(master, text=" Download ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Btn1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
Btn1["bg"] = tk_rgb
Btn1.place(x=379, y=205 , height=30, width=120)
Btn1["command"] = MyDownload
Btn1 = Button(master, text=" Close ", font=("Arial", 10))
tk_rgb = "#%02x%02x%02x" % (0,0,0)
Btn1["fg"] = tk_rgb
tk_rgb = "#%02x%02x%02x" % (255,255,255)
Btn1["bg"] = tk_rgb
Btn1.place(x=507, y=205 , height=30, width=120)
Btn1["command"] = MyClose
vOutput = master.protocol("WM_DELETE_WINDOW", MyClose)
mainloop()

