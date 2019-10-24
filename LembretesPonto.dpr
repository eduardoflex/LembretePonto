program LembretesPonto;

uses
  Vcl.Forms,
  fPonto in 'fPonto.pas' {frmLembretesPonto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmLembretesPonto, frmLembretesPonto);
  Application.Run;
end.
