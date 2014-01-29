unit frmInsertSpan;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls, Spin, ExtDlgs;

type

  { TfInsertSpan }

  TfInsertSpan = class(TForm)
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
  fInsertSpan: TfInsertSpan;

implementation

uses unit1;

procedure TfInsertSpan.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertSpan.FormActivate(Sender: TObject);
begin
  tclass.SetFocus;
end;

procedure TfInsertSpan.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertSpan.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertSpan.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertSpan.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertSpan.bokClick(Sender: TObject);
var c:string;
begin
c:='<span';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>';
InsertEditor(c,'</span>');
Close;
end;

procedure TfInsertSpan.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertspan.lrs}

end.

