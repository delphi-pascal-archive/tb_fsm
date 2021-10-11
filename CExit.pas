unit CExit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TFExit = class(TForm)
    PANEL: TPanel;
    Qwn: TLabel;
    BYes: TLabel;
    BNo: TLabel;
    procedure BYesMouseLeave(Sender: TObject);
    procedure BYesMouseEnter(Sender: TObject);
    procedure BNoMouseEnter(Sender: TObject);
    procedure BNoMouseLeave(Sender: TObject);
    procedure BNoClick(Sender: TObject);
    procedure BYesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExit: TFExit;

implementation

uses CMAIN;

{$R *.dfm}

procedure TFExit.BYesMouseLeave(Sender: TObject);
begin
 BYes.Font.Color:=clGreen;
end;

procedure TFExit.BYesMouseEnter(Sender: TObject);
begin
 BYes.Font.Color:=clLime;
end;

procedure TFExit.BNoMouseEnter(Sender: TObject);
begin
 BNo.Font.Color:=clLime;
end;

procedure TFExit.BNoMouseLeave(Sender: TObject);
begin
 BNo.Font.Color:=clGreen;
end;

procedure TFExit.BNoClick(Sender: TObject);
begin
 ShowCursor(False);
 FExit.Close;
 GS:=0;
end;

procedure TFExit.BYesClick(Sender: TObject);
begin
 FMAIN.Close;
end;

end.
