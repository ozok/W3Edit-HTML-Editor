unit frmInsertBullet;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LResources, Forms, Controls, Graphics, Dialogs,
  StdCtrls, ButtonPanel, Buttons, ExtCtrls, Spin, ExtDlgs;

type

  { TfInsertBullet }

  TfInsertBullet = class(TForm)
    Bevel1: TBevel;
    bcancel: TBitBtn;
    bok: TBitBtn;
    ComboBox1: TComboBox;
    Memo1: TMemo;
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
  fInsertBullet: TfInsertBullet;

implementation

uses unit1;

procedure TfInsertBullet.FormCreate(Sender: TObject);
begin

end;

procedure TfInsertBullet.FormActivate(Sender: TObject);
begin
  combobox1.SetFocus;
end;

procedure TfInsertBullet.FormClose(Sender: TObject; var CloseAction: TCloseAction
  );
begin
  CloseAction := caFree;
end;

procedure TfInsertBullet.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertBullet.BitBtn1Click(Sender: TObject);
begin

end;

procedure TfInsertBullet.bcancelClick(Sender: TObject);
begin
  Close;
end;

procedure TfInsertBullet.bokClick(Sender: TObject);
var
   c:string;
   i:integer;
begin
if combobox1.ItemIndex=0 then c:='<ul' else c:='<ol';
if tclass.text<>'' then c:=c+' class="'+tclass.text+'"';
if tid.text<>'' then c:=c+' id="'+tid.text+'"';
if tinline.text<>'' then c:=c+' style="'+tinline.text+'"';
c:=c+'>'+#13#10;
if trim(memo1.Text)<>'' then for i:=0 to memo1.lines.count-1 do if trim(memo1.lines[i])<>'' then c:=c+'    <li>'+memo1.lines[i]+'</li>'+#13#10;
if combobox1.ItemIndex=0 then c:=c+'</ul>' else c:=c+'</ol>';
InsertEditor(c);
Close;
end;

procedure TfInsertBullet.FormShow(Sender: TObject);
begin

end;

initialization
  {$I frminsertbullet.lrs}

end.

