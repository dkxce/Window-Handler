program WinApi;

uses
  Forms,
  UMain in 'UMain.pas' {fmWinapi};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '����� Windows API';
  Application.CreateForm(TfmWinapi, fmWinapi);
  Application.Run;
end.
