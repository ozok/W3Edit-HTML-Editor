unit frmInsertFieldset;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls;

type

  { TfInsertFieldset }

  TfInsertFieldset = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    bok: TBitBtn;
    Edit1: TEdit;
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
  fInsertFieldset: TfInsertFieldset;

implementation

uses unit1;

procedure TfInsertFieldset.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertFieldset.FormActivate(Sender: TObject);
begin
  edit1.SetFocus;
end;

procedure TfInsertFieldset.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertFieldset.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertFieldset.ComboBox1Change(Sender: TObject);
begin

end;

procedure TfInsertFieldset.Edit1Change(Sender: TObject);
begin
  tid.text := edit1.text;
end;

procedure TfInsertFieldset.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertFieldset.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertFieldset.bokClick(Sender: TObject);
var c:string;
begin
c:=c+'<fieldset';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>'+#13#10;
c:=c+'<legend>'+edit1.text+'</legend>'+#13#10;
InsertEditor(c,'</fieldset>');
Close;
end;

procedure TfInsertFieldset.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertfieldset.lrs}

end.

