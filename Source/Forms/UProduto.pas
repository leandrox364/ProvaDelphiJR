unit UProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFrmProduto = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DtsProduto: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    DtsCategoria: TDataSource;
    DBLookupCategoria: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    DBGrid2: TDBGrid;
    DtsCategoriaProduto: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProduto: TFrmProduto;

implementation

{$R *.dfm}

uses UDmMain;

procedure TFrmProduto.Button1Click(Sender: TObject);
begin
  // valida categoria e produto
  if (DmMain.QryCategoria.FieldByName('id').AsInteger = 0) or
     (DBLookupCategoria.Text = '') then
     raise Exception.Create('Favor selecionar uma categoria.');

  if DmMain.QryProduto.FieldByName('id').AsInteger = 0 then
     raise Exception.Create('Favor selecionar um produto.');




  DmMain.QryCategoriaProduto.Insert;

  DmMain.QryCategoriaProduto.FieldByName('id_categoria').AsInteger :=
  DmMain.QryCategoria.FieldByName('id').AsInteger;

  DmMain.QryCategoriaProduto.FieldByName('id_produto').AsInteger :=
  DmMain.QryProduto.FieldByName('id').AsInteger;

  DmMain.QryCategoriaProduto.Post;
  DmMain.QryCategoriaProduto.Refresh;

end;

procedure TFrmProduto.Button2Click(Sender: TObject);
begin
  DmMain.QryCategoriaProduto.delete;
  DmMain.QryCategoriaProduto.Refresh;


end;

procedure TFrmProduto.FormCreate(Sender: TObject);
begin
  DmMain.QryProduto.Close;
  DmMain.QryProduto.Open;

  DmMain.QryCategoria.Close;
  DmMain.QryCategoria.Open;

  DmMain.QryCategoriaProduto.Close;
  DmMain.QryCategoriaProduto.Open;
end;

end.
