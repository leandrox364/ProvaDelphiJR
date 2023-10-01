unit UDmMain;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDmMain = class(TDataModule)
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QryCategoria: TFDQuery;
    QryCategoriaID: TIntegerField;
    QryCategoriaDESCRICAO: TStringField;
    QryProduto: TFDQuery;
    QryProdutoID: TIntegerField;
    QryProdutoDESCRICAO: TStringField;
    QryProdutoQUANTIDADE: TFloatField;
    QryProdutoPRECO: TFloatField;
    QryCategoriaProduto: TFDQuery;
    DtsProduto: TDataSource;
    QryCategoriaProdutoID: TIntegerField;
    QryCategoriaProdutoID_PRODUTO: TIntegerField;
    QryCategoriaProdutoID_CATEGORIA: TIntegerField;
    QryCategoriaProdutoCATEGORIA: TStringField;
    QryCategoriaProdutoPRODUTO: TStringField;
    QryConsultaProduto: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    QryRelproduto: TFDQuery;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    QryRelprodutoTOTAL: TFloatField;
    procedure QryCategoriaAfterPost(DataSet: TDataSet);
    procedure QryCategoriaBeforePost(DataSet: TDataSet);
    procedure QryProdutoBeforePost(DataSet: TDataSet);
    procedure QryProdutoAfterScroll(DataSet: TDataSet);
    procedure QryProdutoAfterPost(DataSet: TDataSet);
    procedure QryConsultaProdutoAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMain: TDmMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmMain.QryCategoriaAfterPost(DataSet: TDataSet);
begin
  QryCategoria.Refresh;
end;

procedure TDmMain.QryCategoriaBeforePost(DataSet: TDataSet);
begin
  if QryCategoria.FieldByName('descricao').AsString = '' then
     raise Exception.Create('Descrição da categoria não pode ficar em branco.');

end;

procedure TDmMain.QryConsultaProdutoAfterScroll(DataSet: TDataSet);
begin
  QryCategoriaProduto.Close;
  QryCategoriaProduto.ParamByName('id_produto').AsInteger :=
  DataSet.FieldByName('id').AsInteger;
  QryCategoriaProduto.Open;

end;

procedure TDmMain.QryProdutoAfterPost(DataSet: TDataSet);
begin
  DataSet.Refresh;
end;

procedure TDmMain.QryProdutoAfterScroll(DataSet: TDataSet);
begin
  QryCategoriaProduto.Close;
  QryCategoriaProduto.ParamByName('id_produto').AsInteger :=
  DataSet.FieldByName('id').AsInteger;
  QryCategoriaProduto.Open;

end;

procedure TDmMain.QryProdutoBeforePost(DataSet: TDataSet);
begin
  if Length(QryProduto.FieldByName('descricao').AsString) < 5 then
     raise Exception.Create('Descrição do produto não pode ser menor que 5 caracteres.');

end;

end.
