unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ToolWin, ComCtrls, XPMan, StdActns, ActnList,Registry,
  ImgList,shellapi,inifiles;

type
  TForm1 = class(TForm)
    XPManifest1: TXPManifest;
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    SaveAs1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Edit1: TMenuItem;
    Object1: TMenuItem;
    N3: TMenuItem;
    Paste1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    N5: TMenuItem;
    Undo1: TMenuItem;
    Help1: TMenuItem;
    About1: TMenuItem;
    Memo1: TMemo;
    ImageList1: TImageList;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    Compile1: TMenuItem;
    Run1: TMenuItem;
    MakeExe1: TMenuItem;
    SaveDlg: TSaveDialog;
    opd: TOpenDialog;
    Supernovahelp1: TMenuItem;
    ActionList1: TActionList;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    FilePrintSetup1: TFilePrintSetup;
    DFont: TFontDialog;
    N4: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    CDialog: TColorDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure Run1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure New1Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure MakeExe1Click(Sender: TObject);
    procedure Supernovahelp1Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}
var
FilePath : string;



procedure Save_All();
begin
form1.SaveDlg.Execute;
if form1.SaveDlg.FileName <> '' then
begin
FilePath:= form1.SaveDlg.FileName;
form1.Memo1.Lines.SaveToFile(form1.SaveDlg.FileName + '.nova');
FilePath:=form1.SaveDlg.FileName + '.nova';
form1.Memo1.Lines.LoadFromFile(FilePath);
end else
Showmessage('·« Ì„ﬂ‰ Õ›Ÿ «·„·› «·—Ã«¡  ÕœÌœ «·„”«— «·’ÕÌÕ');
end;



//

procedure NewFiletype();
var
path :string;
begin
path:=extractfilepath(application.ExeName) + 'Compiler\Nova.exe';
 With TRegistry.Create Do
  Begin
  RootKey := HKEY_CLASSES_ROOT;
  LazyWrite := false;
  Try
  OpenKey('.nova\shell\open\command', true);
  WriteString('',path+' %1');
  CloseKey;
  OpenKey('.nova\DefaultIcon',true);
  WriteString('',path+',1');
  CloseKey;
  Finally
  free;
  End;
End;
end;

// 

procedure DelFiletype();
var
path :string;
begin
path:='';
 With TRegistry.Create Do
  Begin
  RootKey := HKEY_CLASSES_ROOT;
  LazyWrite := false;
  Try
  OpenKey('.nova\shell\open\command', true);
  WriteString('',path+' %1');
  CloseKey;
  OpenKey('.nova\DefaultIcon',true);
  WriteString('',path+',1');
  CloseKey;
  Finally
  free;
  End;
End;
end;

//
procedure Run_File() ;
begin
if FilePath<>'' then
begin
DeleteFile(FilePath);
form1.Memo1.Lines.SaveToFile(FilePath);
ShellExecute(0, 'open', pchar(FilePath), nil, nil, SW_SHOWNORMAL);
end
else
Showmessage('—Ã«¡« «Õ›Ÿ «·„‘—Ê⁄ ﬁ»· «· ‘€Ì·');
end;

//

procedure Load_File();
begin
form1.opd.Execute;
if form1.opd.FileName<>'' then
begin
FilePath:='';
FilePath:=form1.opd.FileName ;
form1.Memo1.Lines.LoadFromFile(FilePath)
end else
Showmessage('·« Ì„ﬂ‰ › Õ «·„·› «·—Ã«¡ «· √ﬂœ „‰ ’Õ… «·„”«—');
end;

 // make exe file

procedure Make_EXE();
var
File_Name:string;
File_Path:string;
Folder_Name:string;
C_F1:string;
C_F2:string;
C_F3:string;
begin
if  FilePath = '' then
begin
Showmessage('—Ã«¡« ﬁ„ »Õ›Ÿ «·„‘—Ê⁄ ﬁ»· «·ﬁÌ«„ »»‰«∆Â.');
end else
File_Name:= copy(extractfilename(FilePath),1,length(extractfilename(FilePath))-5);
File_Path:=extractfilepath(FilePath);
C_F1:=File_Path+ File_Name+'\' + File_Name + '.exe' ;
C_F2:=File_Path+ File_Name+'\'+File_Name +'.nova'   ;
if FileExists(extractfilepath(C_F2)+File_Name +'.star') then deletefile(extractfilepath(C_F2)+File_Name +'.star');
if File_Path <>'' then
begin
if not DirectoryExists(File_Path+ File_Name)then
begin
mkdir(File_Path+ File_Name);
end else
form1.Memo1.Lines.SaveToFile(FilePath);
CopyFile(PChar(extractfilepath(application.ExeName)+'Compiler\Nova.exe'), PChar(C_F1), false);
CopyFile(PChar(FilePath), PChar(C_F2), false);
showmessage(' „ »‰«¡ «·„‘—Ê⁄ »‰Ã«Õ.');
ShellExecute(0, 'open', PChar(C_F1), pchar('"' + C_F2 +'"'), nil, SW_SHOW);
sleep(500);
Renamefile(extractfilepath(C_F2)+File_Name +'.nova.star',extractfilepath(C_F2)+File_Name +'.star');

end;


end;



procedure Save_Setting();
var
Setting:TIniFile;
begin
setting:= TIniFile.Create(extractfilepath(application.ExeName) + 'Setting.ini' );
setting.WriteString('Setting','Fontname',form1.Memo1.Font.Name);
setting.WriteInteger('Setting','Font size',form1.Memo1.Font.Size  );
setting.WriteInteger('Setting','Font Color',form1.Memo1.Font.Color);
setting.WriteInteger('Setting','Color',form1.CDialog.Color );
setting.Free;
end;


procedure Load_Setting();
var
Setting:TIniFile;
begin
setting:= TIniFile.Create(extractfilepath(application.ExeName) + 'Setting.ini' );
form1.Memo1.Font.Name:=setting.ReadString('Setting','Fontname','Courier New');
form1.Memo1.Font.Size:=setting.ReadInteger('Setting','Font size',18);
form1.Memo1.Font.Color:=setting.ReadInteger('Setting','Font Color',255);
form1.Memo1.Color:=setting.ReadInteger('Setting','Color',16777215);
setting.Free;
end;






procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin

DelFiletype;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
if not fileexists(extractfilepath(application.ExeName)+'Compiler\Nova.exe') then
begin
Showmessage('·„ Ì „ﬂ‰ «·„Õ—— „‰ «·Ê’Ê· «·Ï «·„ —Ã„  ”Ì „ «€·«ﬁ «·»—‰«„Ã');
application.Terminate;
end else
NewFiletype;
Load_Setting;
CDialog.Color:=memo1.Color;
end;

procedure TForm1.ToolButton9Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.ToolButton6Click(Sender: TObject);
begin
Run_File;
end;

procedure TForm1.Run1Click(Sender: TObject);
begin
Run_File;
end;

procedure TForm1.Open1Click(Sender: TObject);
begin
Load_File;
end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin
Load_File;
end;

procedure TForm1.SaveAs1Click(Sender: TObject);
begin
Save_All;
end;

procedure TForm1.ToolButton3Click(Sender: TObject);
begin
if FilePath <> '' then
memo1.Lines.SaveToFile(FilePath)
else
Save_All;
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
if FilePath <> '' then
memo1.Lines.SaveToFile(FilePath)
else
Save_All;
end;

procedure TForm1.New1Click(Sender: TObject);
begin
memo1.Clear ;
FilePath:='';
opd.FileName:='';
savedlg.FileName:=''; 
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
memo1.Clear ;
FilePath:='';
opd.FileName:='';
savedlg.FileName:='';
end;

procedure TForm1.MakeExe1Click(Sender: TObject);
begin
Make_EXE;
end;

procedure TForm1.Supernovahelp1Click(Sender: TObject);
begin
if  not fileexists(extractfilepath( application.ExeName) + 'Help\supernovabook.pdf') then
Showmessage( '·„ Ì „ﬂ‰ «·»—‰«„Ã „‰ «·Õ’Ê· ⁄·Ï „·› «· ⁄·Ì„« ' +#13 + extractfilepath( application.ExeName) + 'Help\supernovabook.pdf' )
else
ShellExecute(Handle, 'open',  pchar(extractfilepath( application.ExeName) + 'Help\supernovabook.pdf'),nil, nil, SW_SHOW);
end;

procedure TForm1.ToolButton10Click(Sender: TObject);
begin
if  not fileexists(extractfilepath( application.ExeName) + 'Help\supernovabook.pdf') then
Showmessage( '·„ Ì „ﬂ‰ «·»—‰«„Ã „‰ «·Õ’Ê· ⁄·Ï „·› «· ⁄·Ì„« ' +#13 + extractfilepath( application.ExeName) + 'Help\supernovabook.pdf' )
else
ShellExecute(Handle, 'open',  pchar(extractfilepath( application.ExeName) + 'Help\supernovabook.pdf'),nil, nil, SW_SHOW);
end;

procedure TForm1.About1Click(Sender: TObject);
begin
aboutbox.ShowModal ;
end;

procedure TForm1.ToolButton4Click(Sender: TObject);
begin
Save_All;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Dfont.Font:=memo1.Font;
DFont.Execute;
memo1.Font:=Dfont.Font;
Save_Setting;
end;

procedure TForm1.N7Click(Sender: TObject);
begin
CDialog.Execute;
memo1.Color:=CDialog.Color ;
Save_Setting;
end;

end.
