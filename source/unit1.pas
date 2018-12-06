unit Unit1; 

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  ButtonPanel, ComCtrls, ExtCtrls, StdCtrls, Buttons, ColorBox, Menus, SynEdit,
  SynHighlighterHTML, SynEditKeyCmds, ShellAPI, LCLType, Spin, Unit2;

type

  { TForm1 }

  TForm1 = class(TForm)
    BaseEditor: TSynEdit;
    ColorButton1: TColorButton;
    Edit1: TEdit;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    ImageList1: TImageList;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    PopupMenu4: TPopupMenu;
    SaveDialog1: TSaveDialog;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    StatusBar1: TStatusBar;
    SynHTMLSyn1: TSynHTMLSyn;
    tmrPanel: TTimer;
    tool1: TPanel;
    tool1c: TPanel;
    tool1c1: TPanel;
    tool1c2: TPanel;
    tool1c3: TPanel;
    tool2: TPanel;
    tool3: TPanel;
    tool4: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    procedure BaseEditorClick(Sender: TObject);
    procedure BaseEditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BaseEditorProcessCommand(Sender: TObject;
      var Command: TSynEditorCommand; var AChar: TUTF8Char; Data: pointer);
    procedure BaseEditorStatusChange(Sender: TObject; Changes: TSynStatusChanges
      );
    procedure Button1Click(Sender: TObject);
    procedure ColorButton1ColorChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure ScrollBox1Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedBu(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    procedure SpeedButton25Click(Sender: TObject);
    procedure SpeedButton26Click(Sender: TObject);
    procedure SpeedButton27Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton36Click(Sender: TObject);
    procedure SpeedButton37Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure onEditorChange(Sender: TObject);
    procedure onEditorKeydown(Sender: TObject);
    procedure BaseEditorCommandProcessed(Sender: TObject;
      var Command: TSynEditorCommand; var AChar: TUTF8Char; Data: pointer);
    procedure tmrPanelTimer(Sender: TObject);
    procedure tool1c1Click(Sender: TObject);
    procedure tool1c2Click(Sender: TObject);
    procedure tool1c3Click(Sender: TObject);
    procedure tool1cClick(Sender: TObject);
    procedure PanelToggle(Panel:TPanel);
    procedure tool2Click(Sender: TObject);
    procedure ToolBar1Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton12Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

  type TOS = (Win, Lin, Mac);

var
  Form1: TForm1;
  cPanel : TPanel;
  wPanel : integer;
  fCount : integer;
  pBuild : string;
  pTempPath : string;
  OS:TOS;
  procedure InsertEditor(StartTag : String; EndTag : String = '');

implementation

uses frmInsertLink, frmInsertImage, frmInsertDiv,
frmInsertSpan, frmInsertParagraph, frmInsertTable,
frmInsertBullet, frmInsertFlash, frmInsertForm,
frmInsertTextBox, frmInsertTextarea, frmInsertPassword,
frmInsertCheckBox, frmInsertRadio, frmInsertButton,
frmInsertHidden, frmInsertFieldset;

procedure PreviewDocument;
begin

    if TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Hint='' then
    begin
     TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).lines.savetofile(pTempPath+form1.pagecontrol1.ActivePage.caption+'.html');
     ShellExecute(0, nil, PChar('file:///'+pTempPath+form1.pagecontrol1.ActivePage.caption+'.html'),nil,nil,SW_SHOWNORMAL);
    end
    else
     ShellExecute(0, nil, PChar('file:///'+TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Hint),nil,nil,SW_SHOWNORMAL);
    begin
    end;

end;

procedure UpdateCursorPos;
begin
form1.statusbar1.Panels[0].Text := 'Row: '+inttostr(TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).CaretX)+'   Col: '+inttostr(TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).CaretY);
end;

procedure SaveDocument;
begin

 if TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Hint='' then
 begin
 form1.SaveDialog1.FileName := form1.pagecontrol1.ActivePage.Caption;
 if form1.savedialog1.Execute then
 begin
 if form1.savedialog1.FileName<>'' then
 begin
 TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Lines.SaveToFile(form1.savedialog1.FileName);
 TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Hint := form1.savedialog1.FileName;
 form1.pagecontrol1.ActivePage.Caption:=extractfilename(form1.savedialog1.FileName);
 form1.pagecontrol1.ActivePage.ImageIndex:=7;
 end;
 end;
 end
 else
 begin
 TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Lines.SaveToFile(TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Hint);
 form1.pagecontrol1.ActivePage.ImageIndex:=7;
 end;

end;

procedure NewDocument(content:string = '');
var
   tab : TTabSheet;
   editor : TSynEdit;
begin

tab := TTabsheet.Create(form1.PageControl1);
tab.PageControl := form1.PageControl1;
tab.ImageIndex:=7;
tab.Caption:='Untitled-' + inttostr(fCount);
inc(fCount,1);

editor := TSynEdit.Create(tab);
editor.Parent := tab;

editor.Align := Form1.BaseEditor.Align;
editor.Font := Form1.BaseEditor.Font;
editor.Highlighter := Form1.BaseEditor.Highlighter;
editor.Options := Form1.BaseEditor.Options;
editor.Options2 := Form1.BaseEditor.Options2;
editor.Gutter.Parts.Delete(0);
editor.Gutter.Parts.Delete(1);
editor.Gutter.Parts.Delete(2);
editor.Gutter.AutoSize := true;
editor.Gutter.LeftOffset:=5;
editor.BookmarkOptions := Form1.BaseEditor.BookmarkOptions;
editor.OnChange := Form1.BaseEditor.OnChange;
editor.OnKeydown := Form1.BaseEditor.OnKeydown;
editor.OnClick := Form1.BaseEditor.OnClick;
editor.Lines.Text := Content;
editor.DoubleBuffered := true;
editor.ScrollBars := ssBoth;
editor.Visible := true;
form1.pagecontrol1.ActivePage := tab;

end;

procedure TForm1.PanelToggle(Panel:TPanel);
begin
cPanel := Panel;
cPanel.AutoSize:=true;
wPanel := cPanel.Height;
cPanel.AutoSize:=false;
tmrPanel.Enabled := true;
end;

procedure TForm1.tool2Click(Sender: TObject);
begin

end;

procedure TForm1.ToolBar1Click(Sender: TObject);
begin

end;

procedure TForm1.ToolButton10Click(Sender: TObject);
begin

end;

procedure TForm1.ToolButton12Click(Sender: TObject);
begin
  PreviewDocument;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin

end;

procedure TForm1.ToolButton2Click(Sender: TObject);
begin

end;

procedure TForm1.ToolButton7Click(Sender: TObject);
begin
  NewDocument;
end;

procedure TForm1.ToolButton8Click(Sender: TObject);
begin
  SaveDocument;
end;

procedure onEditorSave;
begin
  form1.pagecontrol1.ActivePage.ImageIndex:=6;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  {$IFDEF WIN32} OS:=Win; {$ENDIF}
  {$IFDEF UNIX} OS:=Lin; {$ENDIF}
  {$IFDEF DARWIN} OS:=Mac; {$ENDIF}
  tool2.AutoSize:=true;
  tool3.Height:=tool1c2.Height+2;
  tool3.tag := 1;
  tool1.Height:=tool1c.Height+2;
  tool1.tag := 1;
  pTempPath := GetTempDir;
  fCount := 0;
  inc(fcount,1);
  NewDocument;
end;

procedure TForm1.FormShow(Sender: TObject);
begin

end;

procedure TForm1.Label5Click(Sender: TObject);
begin
 edit1.CopyToClipboard;
end;

procedure TForm1.Label6Click(Sender: TObject);
begin
  InsertEditor(edit1.text);
end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
   SaveDocument;
end;

procedure TForm1.ColorButton1ColorChanged(Sender: TObject);
var
   c : TColor;
   s, t1, t2, t3, t4: shortstring;
   r, g, b : integer;
begin

  c := colorbutton1.ButtonColor;
  r := red(c);
  g := green(c);
  b := blue(c);

  s := '#' + copy(colortostring(c), 4, 6);

  t1 := copy(s, 2, 1);
  t2 := copy(s, 3, 1);
  t3 := copy(s, 6, 1);
  t4 := copy(s, 7, 1);
  s[2] := t3[1];
  s[3] := t4[1];
  s[6] := t1[1];
  s[7] := t2[1];

  edit1.Text := s;

if colorbutton1.tag = 0 then
begin
  spinedit1.value := r;
  spinedit2.value := g;
  spinedit3.value := b;
end;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
end;

procedure TForm1.BaseEditorStatusChange(Sender: TObject;
  Changes: TSynStatusChanges);
begin

end;

procedure TForm1.BaseEditorProcessCommand(Sender: TObject;
  var Command: TSynEditorCommand; var AChar: TUTF8Char; Data: pointer);
begin

end;

procedure TForm1.BaseEditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  UpdateCursorPos;
end;

procedure TForm1.BaseEditorClick(Sender: TObject);
begin
  UpdateCursorPos;
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
var
   r, g, b : integer;
   t : string;
begin
   if (spinedit1.Text='') or (spinedit2.Text='') or (spinedit3.Text='') then abort;
   colorbutton1.Tag := 1;
   r := spinedit1.value;
   g := spinedit2.value;
   b := spinedit3.value;
   colorbutton1.ButtonColor := rgbtocolor(r,g,b);
   colorbutton1.Tag := 0;
end;

procedure TForm1.onEditorKeydown(Sender: TObject);
begin
UpdateCursorPos;
end;

procedure TForm1.onEditorChange(Sender: TObject);
begin

if TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Modified then
begin
form1.PageControl1.ActivePage.ImageIndex := 6;
statusbar1.Panels[1].Text := 'Chars: '+inttostr(length(TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Text))+'   Lines: '+inttostr(TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).Lines.Count);
end;

end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  TSynEdit(pagecontrol1.ActivePage.Controls[0]).SelectAll;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
var f2:tform2;
begin
f2:=tform2.Create(application);
f2.show;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
NewDocument;
end;

procedure TForm1.ScrollBox1Click(Sender: TObject);
begin

end;

procedure TForm1.SpeedButton10Click(Sender: TObject);
begin
  InsertEditor('<meta name="keywords" content="" />');
end;

procedure TForm1.SpeedButton11Click(Sender: TObject);
begin
InsertEditor('<link rel="icon" href="" />');
end;

procedure TForm1.SpeedButton12Click(Sender: TObject);
begin
InsertEditor('<link rel="alternate" type="application/rss+xml" href="" title="" />');
end;

procedure TForm1.SpeedButton13Click(Sender: TObject);
begin
InsertEditor('<em>', '</em>');
end;

procedure TForm1.SpeedButton14Click(Sender: TObject);
var f:tfinsertimage;
begin
f:=tfinsertimage.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton15Click(Sender: TObject);
begin
  InsertEditor('<br />');
end;

procedure TForm1.SpeedButton16Click(Sender: TObject);
begin
  InsertEditor('<u>', '</u>');
end;

procedure TForm1.SpeedButton19Click(Sender: TObject);
var f:tfinsertlink;
begin
f:=tfinsertlink.Create(application);
f.Show;
end;

procedure InsertEditor(StartTag : String; EndTag : String = '');
var
   s:string;
begin

  if TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).SelText='' then
  begin
    TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).InsertTextAtCaret(StartTag + EndTag);
  end
  else
  begin
    s := TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).SelText;
    TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).ClearSelection;

    if EndTag<>'' then
        TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).InsertTextAtCaret(StartTag + s + EndTag)
    else
        TSynEdit(form1.pagecontrol1.ActivePage.Controls[0]).InsertTextAtCaret(StartTag);

  end;
end;

procedure TForm1.SpeedBu(Sender: TObject);
var f:tfinsertdiv;
begin
f:=tfinsertdiv.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var f:tfinsertcheckbox;
begin
f:=tfinsertcheckbox.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
  InsertEditor('<strong>', '</strong>');
end;

procedure TForm1.SpeedButton21Click(Sender: TObject);
var f:tfinsertparagraph;
begin
f:=tfinsertparagraph.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton22Click(Sender: TObject);
var f:tfinsertdiv;
begin
f:=tfinsertdiv.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
var f:tfinsertflash;
begin
f:=tfinsertflash.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton24Click(Sender: TObject);
var f:tfinsertbullet;
begin
f:=tfinsertbullet.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton25Click(Sender: TObject);
var f:tfinserttable;
begin
f:=tfinserttable.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton26Click(Sender: TObject);
var f:tfinsertspan;
begin
f:=tfinsertspan.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton27Click(Sender: TObject);
begin
  InsertEditor('<!-- ', ' -->');
end;
procedure TForm1.SpeedButton2Click(Sender: TObject);
var f:tfinserttextbox;
begin
f:=tfinserttextbox.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton36Click(Sender: TObject);
begin
  InsertEditor('<script type="text/javascript" src="">', '</script>');
end;

procedure TForm1.SpeedButton37Click(Sender: TObject);
begin
  InsertEditor('<link rel="stylesheet" type="text/css" href="" media="all" />');
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
var f:tfinsertpassword;
begin
f:=tfinsertpassword.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
var f:tfinsertradio;
begin
f:=tfinsertradio.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
var f:tfinsertbutton;
begin
f:=tfinsertbutton.Create(application);
f.Show;
end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
InsertEditor('<title>', '</title>');
end;

procedure TForm1.SpeedButton8Click(Sender: TObject);
begin
  InsertEditor('<meta http-equiv="content-type" content="text/html; charset=utf-8" />');
end;

procedure TForm1.SpeedButton9Click(Sender: TObject);
begin
InsertEditor('<meta name="description" content="" />');
end;

procedure TForm1.BaseEditorCommandProcessed(Sender: TObject;
  var Command: TSynEditorCommand; var AChar: TUTF8Char; Data: pointer);
begin

end;

procedure TForm1.tmrPanelTimer(Sender: TObject);
begin

if cPanel.Tag =0 then
begin

if cPanel.Height > 22 then
begin
   cPanel.Height := cPanel.Height - 20;
end
else
begin
   cPanel.Height := 22;
   cPanel.Tag := 1;
   tmrPanel.Enabled := false;
end;

end
else
begin

if cPanel.Height < wPanel then
begin
   cPanel.Height := cPanel.Height + 10;
end
else
begin
   cPanel.Height := wPanel;
   cPanel.Tag := 0;
   tmrPanel.Enabled := false;
end;

end;

end;

procedure TForm1.tool1c1Click(Sender: TObject);
begin
  PanelToggle(tool2);
end;

procedure TForm1.tool1c2Click(Sender: TObject);
begin
 PanelToggle(tool3);
end;

procedure TForm1.tool1c3Click(Sender: TObject);
begin
  PanelToggle(tool4);
end;

procedure TForm1.tool1cClick(Sender: TObject);
begin
PanelToggle(tool1);
end;

initialization
  {$I unit1.lrs}

end.

