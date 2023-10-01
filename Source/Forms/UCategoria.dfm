object FrmCategoria: TFrmCategoria
  Left = 0
  Top = 0
  Caption = 'Cadastro de Categoria'
  ClientHeight = 442
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 216
    Top = 40
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 216
    Top = 88
    Width = 63
    Height = 15
    Caption = 'DESCRICAO'
    FocusControl = DBEdit2
  end
  object DBEdit1: TDBEdit
    Left = 216
    Top = 56
    Width = 154
    Height = 23
    DataField = 'ID'
    DataSource = DtsCategoria
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 216
    Top = 109
    Width = 561
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DtsCategoria
    TabOrder = 1
  end
  object DBNavigator1: TDBNavigator
    Left = 216
    Top = 144
    Width = 560
    Height = 41
    DataSource = DtsCategoria
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 216
    Top = 200
    Width = 561
    Height = 209
    DataSource = DtsCategoria
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
  object DtsCategoria: TDataSource
    DataSet = DmMain.QryCategoria
    Left = 760
    Top = 184
  end
end
