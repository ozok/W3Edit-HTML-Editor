unit frmInsertLink;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls;

type

  { TfInsertLink }

  TfInsertLink = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    bok: TBitBtn;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    tinline: TEdit;
    Image1: TImage;
    Label6: TLabel;
    Panel1: TPanel;
    tclass: TEdit;
    tid: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure bcancelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bokClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  fInsertLink: TfInsertLink;

implementation

uses unit1;

procedure TfInsertLink.FormActivate(Sender: TObject);
begin
  edit1.SetFocus;
end;

procedure TfInsertLink.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertLink.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertLink.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfInsertLink.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertLink.bokClick(Sender: TObject);
var c:string;
begin
c:='<a';
if edit1.text<>'' then c:=c+' href="'+edit1.text+'"' else c:=c+' href="#"';
if edit2.text<>'' then c:=c+' title="'+edit2.text+'"';
if combobox1.text<>'' then c:=c+' target="'+combobox1.text+'"';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>';
InsertEditor(c,'</a>');
Close;
end;

initialization
  {$I frminsertlink.lrs}

end.

