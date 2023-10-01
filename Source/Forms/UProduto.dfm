object FrmProduto: TFrmProduto
  Left = 0
  Top = 0
  Caption = 'Cadastro de Produto'
  ClientHeight = 674
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Label1: TLabel
    Left = 240
    Top = 16
    Width = 11
    Height = 15
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 240
    Top = 64
    Width = 63
    Height = 15
    Caption = 'DESCRICAO'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 240
    Top = 112
    Width = 73
    Height = 15
    Caption = 'QUANTIDADE'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 240
    Top = 160
    Width = 37
    Height = 15
    Caption = 'PRECO'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 240
    Top = 435
    Width = 146
    Height = 21
    Caption = 'Selecione a categoria'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 240
    Top = 32
    Width = 154
    Height = 23
    DataField = 'ID'
    DataSource = DtsProduto
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 240
    Top = 80
    Width = 529
    Height = 23
    DataField = 'DESCRICAO'
    DataSource = DtsProduto
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 240
    Top = 128
    Width = 154
    Height = 23
    DataField = 'QUANTIDADE'
    DataSource = DtsProduto
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 240
    Top = 176
    Width = 154
    Height = 23
    DataField = 'PRECO'
    DataSource = DtsProduto
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 240
    Top = 216
    Width = 520
    Height = 49
    DataSource = DtsProduto
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 239
    Top = 279
    Width = 521
    Height = 137
    DataSource = DtsProduto
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object DBLookupCategoria: TDBLookupComboBox
    Left = 239
    Top = 462
    Width = 361
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = 'ID'
    ListField = 'DESCRICAO'
    ListSource = DtsCategoria
    ParentFont = False
    TabOrder = 6
  end
  object Button1: TButton
    Left = 606
    Top = 448
    Width = 41
    Height = 53
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 653
    Top = 448
    Width = 41
    Height = 53
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    OnClick = Button2Click
  end
  object DBGrid2: TDBGrid
    Left = 239
    Top = 507
    Width = 521
    Height = 137
    DataSource = DtsCategoriaProduto
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_CATEGORIA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CATEGORIA'
        Width = 183
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Visible = True
      end>
  end
  object DtsProduto: TDataSource
    DataSet = DmMain.QryProduto
    Left = 704
    Top = 136
  end
  object DtsCategoria: TDataSource
    DataSet = DmMain.QryCategoria
    Left = 472
    Top = 416
  end
  object DtsCategoriaProduto: TDataSource
    DataSet = DmMain.QryCategoriaProduto
    Left = 448
    Top = 600
  end
end
