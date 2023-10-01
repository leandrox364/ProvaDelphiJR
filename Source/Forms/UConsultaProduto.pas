unit UConsultaProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFrmConsultaProduto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    EdtID: TEdit;
    EdtDescricao: TEdit;
    DBGrid1: TDBGrid;
    Button1: TButton;
    DtsConsultaProduto: TDataSource;
    DBGrid2: TDBGrid;
    DtsConsultaCategoria: TDataSource;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsultaProduto: TFrmConsultaProduto;

implementation

{$R *.dfm}

uses UDmMain;

procedure TFrmConsultaProduto.Button1Click(Sender: TObject);
begin
  DmMain.QryConsultaProduto.Close;

  DmMain.QryConsultaProduto.SQL.Clear;
  DmMain.QryConsultaProduto.SQL.Add('SELECT * FROM PRODUTO');
  DmMain.QryConsultaProduto.SQL.Add('WHERE 1 = 1');

  if EdtID.Text <> '' then
  begin
     DmMain.QryConsultaProduto.SQL.Add('and ID = :ID');
     DmMain.QryConsultaProduto.ParamByName('id').AsInteger := strtoint(EdtID.Text)

  end;
  if EdtDescricao.Text <> '' then
  begin
     DmMain.QryConsultaProduto.SQL.Add('and upper(descricao) like upper(:descricao) ');
     DmMain.QryConsultaProduto.ParamByName('descricao').AsString := '%'+ EdtDescricao.Text+ '%';
  end;

  DmMain.QryConsultaProduto.SQL.Add('order by descricao');


  DmMain.QryConsultaProduto.Open;

end;

end.
