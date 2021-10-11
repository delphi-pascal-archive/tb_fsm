unit CMAIN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, ExtCtrls;

type
  TFMAIN = class(TForm)
    P: TLabel;
    AL: TActionList;
    MoveToLeft: TAction;
    MoveToRight: TAction;
    MoveToUp: TAction;
    MoveToDown: TAction;
    Exit: TAction;
    E: TLabel;
    ET: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure BCLOSEClick(Sender: TObject);
    procedure MoveToLeftExecute(Sender: TObject);
    procedure MoveToRightExecute(Sender: TObject);
    procedure MoveToUpExecute(Sender: TObject);
    procedure MoveToDownExecute(Sender: TObject);
    procedure ExitExecute(Sender: TObject);
    procedure ETTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMAIN: TFMAIN;
  PS: Integer;
  GS: Integer;

implementation

uses CExit, CLose;

{$R *.dfm}

function SetFullscreenMode: Boolean;
var
 DeviceMode: TDevMode;
begin
 with DeviceMode do
  begin
   dmSize:=SizeOf(DeviceMode);
   dmBitsPerPel:=16;
   dmPelsWidth:=640;
   dmPelsHeight:=480;
   dmFields:=DM_BITSPERPEL or DM_PELSWIDTH or DM_PELSHEIGHT;
   Result:=False;
   if ChangeDisplaySettings(DeviceMode,CDS_TEST or CDS_FULLSCREEN) <> DISP_CHANGE_SUCCESSFUL
   then Exit;
   Result:=ChangeDisplaySettings(DeviceMode,CDS_FULLSCREEN) = DISP_CHANGE_SUCCESSFUL;
  end;
end;

procedure RestoreDefaultMode;
var
 T: TDevMode {absolute 0};
begin
 ChangeDisplaySettings(T,CDS_FULLSCREEN);
end;


procedure TFMAIN.FormCreate(Sender: TObject);
begin
 FMAIN.Position:=poDesigned;
 FMAIN.Color:=clBlack;
 FMAIN.Top:=0;
 FMAIN.Left:=0;
 SetFullscreenMode;
 FMAIN.Width:=Screen.Width;
 FMAIN.Height:=Screen.Height;
 ShowCursor(false);
 P.Visible:=true;
 E.Left:=Screen.Width-8;
 E.Top:=Screen.Height-8;
 E.Visible:=true;
 GS:=0;
 ET.Enabled:=true;
end;

procedure TFMAIN.BCLOSEClick(Sender: TObject);
begin
 FMAIN.Close;
end;

procedure TFMAIN.MoveToLeftExecute(Sender: TObject);
begin
 if (P.Left<>0) and (GS=0)
 then P.Left:=P.Left-1;
 PS:=1;
end;

procedure TFMAIN.MoveToRightExecute(Sender: TObject);
begin
 if (P.Left<>Screen.Width-P.Width) and (GS=0)
 then P.Left:=P.Left+1;
 PS:=2;
end;

procedure TFMAIN.MoveToUpExecute(Sender: TObject);
begin
 if (P.Top<>0) and (GS=0)
 then P.Top:=P.Top-1;
 PS:=3;
end;

procedure TFMAIN.MoveToDownExecute(Sender: TObject);
begin
 if (P.Top<>Screen.Height-P.Height) and (GS=0)
 then P.Top:=P.Top+1;
 PS:=4;
end;

procedure TFMAIN.ExitExecute(Sender: TObject);
begin
 if GS=0
 then
  begin
   GS:=1;
   ShowCursor(True);
   FExit.Visible:=True;
  end;
end;

procedure TFMAIN.ETTimer(Sender: TObject);
begin
 if GS=0
 then
  begin
   if P.Left<E.Left
   then E.Left:=E.Left-1
   else E.Left:=E.Left+1;
   if P.Top<E.Top
   then E.Top:=E.Top-1
   else E.Top:=E.Top+1;
   if (E.Left=P.Left) and (E.Top=P.Top)
   then
    begin
     FLose.Visible:=True;
     ShowCursor(True);
     GS:=1;
    end;
  end;
end;

procedure TFMAIN.FormShow(Sender: TObject);
begin
 FLose.PANEL.Color:=clBlack;
 FExit.PANEL.Color:=clBlack;
end;

end.
