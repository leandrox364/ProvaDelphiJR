object FrmConsultaProduto: TFrmConsultaProduto
  Left = 0
  Top = 0
  Caption = 'Consulta de Produto'
  ClientHeight = 634
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 16
    Width = 11
    Height = 15
    Caption = 'ID'
  end
  object Label2: TLabel
    Left = 176
    Top = 16
    Width = 51
    Height = 15
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 32
    Top = 300
    Width = 90
    Height = 25
    Caption = 'Categorias'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object EdtID: TEdit
    Left = 32
    Top = 40
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object EdtDescricao: TEdit
    Left = 176
    Top = 40
    Width = 353
    Height = 23
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 80
    Width = 729
    Height = 201
    DataSource = DtsConsultaProduto
    TabOrder = 2
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
        Width = 393
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Width = 135
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 560
    Top = 32
    Width = 97
    Height = 33
    Caption = 'Consultar'
    TabOrder = 3
    OnClick = Button1Click
  end
  object DBGrid2: TDBGrid
    Left = 32
    Top = 331
    Width = 729
    Height = 137
    DataSource = DtsConsultaCategoria
    TabOrder = 4
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
  object DtsConsultaProduto: TDataSource
    DataSet = DmMain.QryConsultaProduto
    Left = 80
    Top = 240
  end
  object DtsConsultaCategoria: TDataSource
    DataSet = DmMain.QryCategoriaProduto
    Left = 65
    Top = 496
  end
end
