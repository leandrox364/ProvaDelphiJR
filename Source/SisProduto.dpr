program SisProduto;

uses
  Vcl.Forms,
  UMain in 'Forms\UMain.pas' {FrmMain},
  UDmMain in 'DM\UDmMain.pas' {DmMain: TDataModule},
  UCategoria in 'Forms\UCategoria.pas' {FrmCategoria},
  UProduto in 'Forms\UProduto.pas' {FrmProduto},
  UConsultaProduto in 'Forms\UConsultaProduto.pas' {FrmConsultaProduto},
  URelProduto in 'Forms\URelProduto.pas' {FrmRelProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDmMain, DmMain);
  Application.Run;
end.
