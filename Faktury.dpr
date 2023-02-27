program Faktury;

uses
  Vcl.Forms,
  Main in 'Source\Main.pas' {FormMain},
  FModalBase in 'Source\FModalBase.pas' {ModalBase},
  fFaktury in 'Source\fFaktury.pas' {fFakturyForm},
  uFaktury in 'Source\uFaktury.pas',
  fFirma in 'Source\fFirma.pas' {FirmaForm},
  uDB in 'Source\uDB.pas',
  fKontrahent in 'Source\fKontrahent.pas' {KontrahentForm},
  FModalList in 'Source\FModalList.pas' {ModalList},
  fKontrahenciLista in 'Source\fKontrahenciLista.pas' {KontrahenciListaForm},
  FTypes in 'Source\FTypes.pas';

{$R *.res}

begin
  Komunikat:= TKomunikat.Create;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
  Komunikat.Free;
end.
