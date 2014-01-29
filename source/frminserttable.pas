unit frmInsertTable;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls, Spin, ExtDlgs;

type

  { TfInsertTable }

  TfInsertTable = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    bok: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    tclass1: TEdit;
    tinline: TEdit;
    Image1: TImage;
    Label6: TLabel;
    Panel1: TPanel;
    tclass: TEdit;
    tid: TEdit;
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
  fInsertTable: TfInsertTable;

implementation

uses unit1;

procedure TfInsertTable.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertTable.FormActivate(Sender: TObject);
begin
  spinedit2.SetFocus;
end;

procedure TfInsertTable.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertTable.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertTable.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertTable.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertTable.bokClick(Sender: TObject);
var
   c:string;
   i,j:integer;
begin
c:='<table';
c:=c+' cellspacing="'+inttostr(spinedit4.Value)+'"';
c:=c+' cellpadding="'+inttostr(spinedit5.Value)+'"';
c:=c+' border="'+inttostr(spinedit1.Value)+'"';
if tclass1.text<>'' then c:=c+' width="'+tclass1.text+combobox1.text+'"';
if combobox2.text<>'' then c:=c+' align="'+combobox2.text+'"';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>'+#13#10;

for i:=1 to spinedit2.value do
begin
c:=c+'<tr>'+#13#10;
for j:=1 to spinedit3.value do
begin
c:=c+'    <td></td>'+#13#10;
end;
c:=c+'</tr>'+#13#10;
end;

InsertEditor(c,'</table>');
Close;
end;

procedure TfInsertTable.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminserttable.lrs}

end.

