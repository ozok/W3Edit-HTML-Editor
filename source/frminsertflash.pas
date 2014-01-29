unit frmInsertFlash;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls, Spin, ExtDlgs;

type

  { TfInsertFlash }

  TfInsertFlash = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    BitBtn1: TBitBtn;
    bok: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label3: TLabel;
    Label7: TLabel;
    OpenDialog1: TOpenDialog;
    tinline: TEdit;
    Image1: TImage;
    Label6: TLabel;
    Panel1: TPanel;
    tclass: TEdit;
    tid: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure bcancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  fInsertFlash: TfInsertFlash;

implementation

uses unit1;

procedure TfInsertFlash.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertFlash.FormActivate(Sender: TObject);
begin
  edit1.SetFocus;
end;

procedure TfInsertFlash.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertFlash.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertFlash.BitBtn1Click(Sender: TObject);
begin
  if opendialog1.Execute then
  begin
  if opendialog1.FileName<>'' then edit1.Text:='file:///'+opendialog1.FileName;
  end;
end;

procedure TfInsertFlash.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertFlash.bokClick(Sender: TObject);
var c:string;
begin
c:='<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"';
if edit3.text<>'' then c:=c+' width="'+edit3.text+'"';
if edit4.text<>'' then c:=c+' height="'+edit4.text+'"';
if edit2.text<>'' then c:=c+' title="'+edit2.text+'"';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>'+#13#10;
c:=c+'<param name="movie" value="file:///'+edit1.text+'" />'+#13#10;
c:=c+'<param name="quality" value="high" />'+#13#10;
c:=c+'<embed src="file:///'+edit1.text+'" width="'+edit3.text+'" height="'+edit4.text+'" quality="high" pluginspage="http://www.adobe.com/shockwave/download/download.cgi?P1_Prod_Version=ShockwaveFlash" type="application/x-shockwave-flash"></embed>'+#13#10;
c:=c+'</object>';
InsertEditor(c);
Close;
end;

procedure TfInsertFlash.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertflash.lrs}

end.

