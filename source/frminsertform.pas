unit frmInsertForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls;

type

  { TfInsertForm }

  TfInsertForm = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    bok: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit5: TEdit;
    Label3: TLabel;
    Label8: TLabel;
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
  fInsertForm: TfInsertForm;

implementation

uses unit1;

procedure TfInsertForm.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertForm.FormActivate(Sender: TObject);
begin
  edit1.SetFocus;
end;

procedure TfInsertForm.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertForm.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertForm.Edit1Change(Sender: TObject);
begin
  tid.text := edit1.text;
end;

procedure TfInsertForm.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertForm.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertForm.bokClick(Sender: TObject);
var c:string;
begin
c:='<form';
if edit1.text<>'' then c:=c+' name="'+edit1.text+'"';
if edit5.text<>'' then c:=c+' action="'+edit5.text+'"';
if combobox1.text<>'' then c:=c+' method="'+combobox1.text+'"';
if combobox2.text<>'' then c:=c+' enctype="'+combobox2.text+'"';
if tclass.text<>'' then c:=c+' id="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>';
InsertEditor(c,'</form>');
Close;
end;

procedure TfInsertForm.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertform.lrs}

end.

