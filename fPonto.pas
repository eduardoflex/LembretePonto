unit fPonto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, dxLayoutContainer, dxWheelPicker, dxNumericWheelPicker, dxDateTimeWheelPicker,
  cxClasses, dxLayoutControl, Vcl.ExtCtrls, dxAlertWindow, cxPropertiesStore, Vcl.Menus, System.ImageList, Vcl.ImgList,
  cxImageList, dxSkinsForm, dxLayoutLookAndFeels;

type
  TfrmLembretesPonto = class(TForm)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edtRetorno: TdxDateTimeWheelPicker;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem2: TdxLayoutItem;
    edtSaida: TdxDateTimeWheelPicker;
    dxLayoutItem3: TdxLayoutItem;
    edtIntervalo: TdxDateTimeWheelPicker;
    dxLayoutItem4: TdxLayoutItem;
    edtEntrada: TdxDateTimeWheelPicker;
    Tray1: TTrayIcon;
    dxAlert1: TdxAlertWindowManager;
    cxStore1: TcxPropertiesStore;
    Timer1: TTimer;
    cxImages1: TcxImageList;
    dxSkin1: TdxSkinController;
    dxLayout1: TdxLayoutLookAndFeelList;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    Popup1: TPopupMenu;
    Mostrar1: TMenuItem;
    Sair1: TMenuItem;

    procedure timerTimer(Sender: TObject);
    procedure dxAlert1ButtonClick(Sender: TObject; AAlertWindow: TdxAlertWindow; AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Mostrar1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);

  private
    FEntradaAtivo: Boolean;
    FIntervaloAtivo: Boolean;
    FRetornoAtivo: Boolean;
    FSaidaAtivo: Boolean;
    FDia: TDate;
    FClose: Boolean;

    procedure TesteEntrada;
    procedure TesteIntervalo;
    procedure TesteRetorno;
    procedure TesteSaida;

    procedure MensagemSaida;
    procedure MensagemRetorno;
    procedure MensagemIntervalo;
    procedure MensagemEntrada;
    procedure IniciaDia;

  public
    { Public declarations }
  end;

var
  frmLembretesPonto: TfrmLembretesPonto;

implementation

{$R *.dfm}


procedure TfrmLembretesPonto.dxAlert1ButtonClick(Sender: TObject; AAlertWindow: TdxAlertWindow; AButtonIndex: Integer);
begin
  if AAlertWindow.Caption = 'Entrada' then
    if AButtonIndex = 0 then
      FEntradaAtivo := False
    else
      ShowMessage('Vá bater o ponto!')
  else if AAlertWindow.Caption = 'Intervalo' then
    FIntervaloAtivo := False
  else if AAlertWindow.Caption = 'Retorno' then
    if AButtonIndex = 0 then
      FRetornoAtivo := False
    else
      ShowMessage('Vá bater o ponto!')
  else if AAlertWindow.Caption = 'Saída' then
    FSaidaAtivo := False;

  AAlertWindow.Hide;
end;


procedure TfrmLembretesPonto.TesteEntrada;
var
  Agora: TDateTime;
  Hora: TDateTime;
begin
  Agora := Now;
  Hora := TDateTime(edtEntrada.EditValue);
  if ((Agora - trunc(Agora)) >= (Hora - trunc(Hora))) then
    MensagemEntrada;
end;


procedure TfrmLembretesPonto.TesteIntervalo;
var
  Agora: TDateTime;
  Hora: TDateTime;
begin
  Agora := Now;
  Hora := TDateTime(edtIntervalo.EditValue);
  if ((Agora - trunc(Agora)) >= (Hora - trunc(Hora))) then
    MensagemIntervalo;
end;


procedure TfrmLembretesPonto.TesteRetorno;
var
  Agora: TDateTime;
  Hora: TDateTime;
begin
  Agora := Now;
  Hora := TDateTime(edtRetorno.EditValue);
  if ((Agora - trunc(Agora)) >= (Hora - trunc(Hora))) then
    MensagemRetorno;
end;


procedure TfrmLembretesPonto.TesteSaida;
var
  Agora: TDateTime;
  Hora: TDateTime;
begin
  Agora := Now;
  Hora := TDateTime(edtSaida.EditValue);
  if ((Agora - trunc(Agora)) >= (Hora - trunc(Hora))) then
    MensagemSaida;
end;


procedure TfrmLembretesPonto.MensagemSaida;
begin
  dxAlert1.OptionsButtons.Buttons[0].Hint := 'Ok';
  dxAlert1.OptionsButtons.Buttons[1].Visible := False;
  dxAlert1.Show('Saída', 'Não esqueça de bater o ponto na saída!', 3).Caption := 'Saída';
end;


procedure TfrmLembretesPonto.Mostrar1Click(Sender: TObject);
begin
  Show;
end;


procedure TfrmLembretesPonto.Sair1Click(Sender: TObject);
begin
  FClose := True;
  Close;
end;


procedure TfrmLembretesPonto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := FClose or False;
  Hide;
  cxStore1.StoreTo;
end;


procedure TfrmLembretesPonto.FormCreate(Sender: TObject);
begin
  IniciaDia;
end;


procedure TfrmLembretesPonto.MensagemRetorno;
begin
  dxAlert1.OptionsButtons.Buttons[0].Hint := 'Sim!';
  dxAlert1.OptionsButtons.Buttons[1].Hint := 'Não.';
  dxAlert1.OptionsButtons.Buttons[1].Visible := True;
  dxAlert1.Show('Retorno', 'Lembrou de bater o ponto ao retornar do almoço?', 2).Caption := 'Retorno';
end;


procedure TfrmLembretesPonto.MensagemIntervalo;
begin
  dxAlert1.OptionsButtons.Buttons[0].Hint := 'Ok';
  dxAlert1.OptionsButtons.Buttons[1].Visible := False;
  dxAlert1.Show('Intervalo', 'Não esqueça de bater o ponto para ir almoçar!', 1).Caption := 'Intervalo';
end;


procedure TfrmLembretesPonto.MensagemEntrada;
begin
  dxAlert1.OptionsButtons.Buttons[0].Hint := 'Sim!';
  dxAlert1.OptionsButtons.Buttons[1].Hint := 'Não.';
  dxAlert1.OptionsButtons.Buttons[1].Visible := True;
  dxAlert1.Show('Entrada', 'Lembrou de bater o ponto na entrada?', 0).Caption := 'Entrada';
end;


procedure TfrmLembretesPonto.IniciaDia;
begin
  FDia := Date;
  FEntradaAtivo := True;
  FIntervaloAtivo := True;
  FRetornoAtivo := True;
  FSaidaAtivo := True;
end;


procedure TfrmLembretesPonto.timerTimer(Sender: TObject);
begin
  if FDia <> Date then
    IniciaDia;

  if FEntradaAtivo then
    TesteEntrada
  else if FIntervaloAtivo then
    TesteIntervalo
  else if FRetornoAtivo then
    TesteRetorno
  else if FSaidaAtivo then
    TesteSaida;
end;

end.
