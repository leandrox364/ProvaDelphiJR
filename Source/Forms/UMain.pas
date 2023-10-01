unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, RLReport, Vcl.StdCtrls,
  RLParser;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Categoria1: TMenuItem;
    Produto1: TMenuItem;
    ConsultadeProdutos1: TMenuItem;
    Ralatrio1: TMenuItem;
    EdtParImpar: TEdit;
    Button1: TButton;
    Button2: TButton;
    ListBox1: TListBox;
    ListBox2: TListBox;
    Button3: TButton;
    procedure Categoria1Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure ConsultadeProdutos1Click(Sender: TObject);
    procedure Ralatrio1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

{$R *.dfm}

uses UCategoria, UProduto, UDmMain, UConsultaProduto, URelProduto;

procedure TFrmMain.Button1Click(Sender: TObject);
begin

  if (strtoint(EdtParImpar.Text) mod 2) = 0 then
     ShowMessage('Númeor é par')
  else
     ShowMessage('Númeor é impar');
end;

procedure TFrmMain.Button2Click(Sender: TObject);
var
  i : integer;
begin

  for I := 1 to 99 do
  begin

  end;
  ShowMessage(i.ToString);

end;

procedure TFrmMain.Button3Click(Sender: TObject);
var
  i : integer;
begin
  for I := 0 to ListBox1.Items.Count - 1 do
  begin
    Sleep(1000);
    ListBox2.Items.Add(ListBox1.Items[i]);
  end;
end;

procedure TFrmMain.Categoria1Click(Sender: TObject);
begin

  Application.CreateForm(TFrmCategoria, FrmCategoria);
  FrmCategoria.showmodal;
  FrmCategoria.free;
  FrmCategoria := nil;

end;

procedure TFrmMain.ConsultadeProdutos1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmConsultaProduto, FrmConsultaProduto);
  FrmConsultaProduto.showmodal;
  FrmConsultaProduto.free;
  FrmConsultaProduto:= nil;
end;

procedure TFrmMain.Produto1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmProduto, FrmProduto);
  FrmProduto.showmodal;
  FrmProduto.free;
  FrmProduto:= nil;

end;

procedure TFrmMain.Ralatrio1Click(Sender: TObject);
begin
  Application.CreateForm(TFrmRelProduto, FrmRelProduto);
  DmMain.QryRelproduto.Close;
  DmMain.QryRelproduto.OPen;
  FrmRelProduto.RLReport1.Preview();
  FrmRelProduto.Free;
  FrmRelProduto:=nil;

end;

end.
