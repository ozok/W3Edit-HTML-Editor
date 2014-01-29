unit frmInsertImage;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls, Spin, ExtDlgs;

type

  { TfInsertImage }

  TfInsertImage = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    BitBtn1: TBitBtn;
    bok: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
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
  fInsertImage: TfInsertImage;

implementation

uses unit1;

procedure TfInsertImage.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertImage.FormActivate(Sender: TObject);
begin
  edit1.SetFocus;
end;

procedure TfInsertImage.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertImage.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertImage.BitBtn1Click(Sender: TObject);
begin
  if openpicturedialog1.Execute then
  begin
  if openpicturedialog1.FileName<>'' then edit1.Text:='file:///'+openpicturedialog1.FileName;
  end;
end;

procedure TfInsertImage.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertImage.bokClick(Sender: TObject);
var c:string;
begin
c:='<img';
if edit1.text<>'' then c:=c+' src="'+edit1.text+'"' else c:=c+' href="#"';
if edit2.text<>'' then c:=c+' alt="'+edit2.text+'"';
if edit3.text<>'' then c:=c+' border="'+edit3.text+'"';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+' />';
InsertEditor(c);
Close;
end;

procedure TfInsertImage.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertimage.lrs}

end.

