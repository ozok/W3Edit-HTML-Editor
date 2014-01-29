unit frmInsertDiv;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls, Spin, ExtDlgs;

type

  { TfInsertDiv }

  TfInsertDiv = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    bok: TBitBtn;
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
  fInsertDiv: TfInsertDiv;

implementation

uses unit1;

procedure TfInsertDiv.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertDiv.FormActivate(Sender: TObject);
begin
  tclass.SetFocus;
end;

procedure TfInsertDiv.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertDiv.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertDiv.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertDiv.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertDiv.bokClick(Sender: TObject);
var c:string;
begin
c:='<div';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>';
InsertEditor(c,'</div>');
Close;
end;

procedure TfInsertDiv.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertdiv.lrs}

end.

