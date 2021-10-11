unit CLose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFLOSE = class(TForm)
    PANEL: TPanel;
    Qwn: TLabel;
    BYes: TLabel;
    BNo: TLabel;
    procedure BYesMouseLeave(Sender: TObject);
    procedure BYesMouseEnter(Sender: TObject);
    procedure BNoMouseLeave(Sender: TObject);
    procedure BNoMouseEnter(Sender: TObject);
    procedure BYesClick(Sender: TObject);
    procedure BNoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLOSE: TFLOSE;

implementation

uses CMAIN;

{$R *.dfm}

procedure TFLOSE.BYesMouseLeave(Sender: TObject);
begin
 BYes.Font.Color:=clGreen;
end;

procedure TFLOSE.BYesMouseEnter(Sender: TObject);
begin
 BYes.Font.Color:=clLime;
end;

procedure TFLOSE.BNoMouseLeave(Sender: TObject);
begin
 BNo.Font.Color:=clGreen;
end;

procedure TFLOSE.BNoMouseEnter(Sender: TObject);
begin
 BNo.Font.Color:=clLime;
end;

procedure TFLOSE.BYesClick(Sender: TObject);
begin
 FLose.Close;
 GS:=0;
 FMAIN.P.Left:=8;
 FMAIN.P.Top:=8;
 FMAIN.E.Left:=Screen.Width-16;
 FMAIN.E.Top:=Screen.Height-16;
end;

procedure TFLOSE.BNoClick(Sender: TObject);
begin
 FMAIN.Close;
end;

end.
