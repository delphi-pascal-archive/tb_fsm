program TBFSM;

uses
  Forms,
  CMAIN in 'CMAIN.pas' {FMAIN},
  CExit in 'CExit.pas' {FExit},
  CLose in 'CLose.pas' {FLOSE};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'TB FSM';
  Application.CreateForm(TFMAIN, FMAIN);
  Application.CreateForm(TFExit, FExit);
  Application.CreateForm(TFLOSE, FLOSE);
  Application.Run;
end.
