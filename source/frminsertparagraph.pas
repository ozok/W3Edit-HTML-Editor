unit frmInsertParagraph;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls, Spin, ExtDlgs;

type

  { TfInsertParagraph }

  TfInsertParagraph = class(TForm)
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
  fInsertParagraph: TfInsertParagraph;

implementation

uses unit1;

procedure TfInsertParagraph.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertParagraph.FormActivate(Sender: TObject);
begin
  tclass.SetFocus;
end;

procedure TfInsertParagraph.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertParagraph.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertParagraph.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertParagraph.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertParagraph.bokClick(Sender: TObject);
var c:string;
begin
c:='<p';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>';
InsertEditor(c,'</p>');
Close;
end;

procedure TfInsertParagraph.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertparagraph.lrs}

end.

