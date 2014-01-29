unit frmInsertHidden;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls;

type

  { TfInsertHidden }

  TfInsertHidden = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    bok: TBitBtn;
    Edit1: TEdit;
    Edit5: TEdit;
    Label8: TLabel;
    tinline: TEdit;
    Image1: TImage;
    Label6: TLabel;
    Panel1: TPanel;
    tclass: TEdit;
    tid: TEdit;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure bcancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
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
  fInsertHidden: TfInsertHidden;

implementation

uses unit1;

procedure TfInsertHidden.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertHidden.FormActivate(Sender: TObject);
begin
  edit1.SetFocus;
end;

procedure TfInsertHidden.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertHidden.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertHidden.ComboBox1Change(Sender: TObject);
begin

end;

procedure TfInsertHidden.Edit1Change(Sender: TObject);
begin
  tid.text := edit1.text;
end;

procedure TfInsertHidden.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertHidden.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertHidden.bokClick(Sender: TObject);
var c:string;
begin
c:=c+'<input type="hidden"';
if edit1.text<>'' then c:=c+' name="'+edit1.text+'"';
if edit5.text<>'' then c:=c+' value="'+edit5.text+'"';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+' />';
InsertEditor(c);
Close;
end;

procedure TfInsertHidden.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminserthidden.lrs}

end.

