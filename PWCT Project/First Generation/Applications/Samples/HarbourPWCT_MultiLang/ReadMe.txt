Multiple languages sample 

File ActiveLang.txt determine the active language file 
File English.txt the English language file
File French.txt the French language file

All what you need to add this feature to your programs is

1 - Copy the class MultiLang to your project (ML.PRG, ML.SSF & ML.FPT)
2 - link this class to your project using (Set Procedure to) and type ML.PRG
3 - create object from this class (oML) using new object
3 - use this object to add text to the program user interface

for example, instead of typing "name" or "address" as the label caption
we type oML:GetStr(1,"Name") and oML:GetStr(2,"Address")

Where the method GetStr get two parameters
the first is the ID (Line Number) and the second is the text

You don't need to create the language file (English.txt) & (French.txt)
Because the class will create this file for you if it's not found 

when you try to get a string using oML:GetStr(nLineNumber,cString)
if the line number is not found, it will be added and the string (cString) 
will be written in this line and you will get it as the returned value

Then when you create your program you don't think about the translation files
you just use oML:GetStr() and give an ID & String.

To select the translation file use oML:cFileName = "MyLangFileName.txt"

To add new language support, also use oML:cFileName = "NewLangFileName.txt"
and the file will be created and the text will be added during the runtime
then you can change it.

Greetings,
Mahmoud Fayed
http://doublesvsoop.sf.net




