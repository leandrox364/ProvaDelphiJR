unit UCategoria;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask;

type
  TFrmCategoria = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DtsCategoria: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCategoria: TFrmCategoria;

implementation

{$R *.dfm}

uses UDmMain;

procedure TFrmCategoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmMain.QryCategoria.Close;
end;

procedure TFrmCategoria.FormCreate(Sender: TObject);
begin
  DmMain.QryCategoria.Close;
  DmMain.QryCategoria.Open;

end;

end.
