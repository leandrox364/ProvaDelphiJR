object FrmRelProduto: TFrmRelProduto
  Left = 0
  Top = 0
  Caption = 'FrmRelProduto'
  ClientHeight = 840
  ClientWidth = 903
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object RLReport1: TRLReport
    Left = 48
    Top = 24
    Width = 794
    Height = 1123
    DataSource = DtsRelProduto
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 88
        Top = 16
        Width = 505
        Height = 32
        Alignment = taCenter
        Caption = 'Relat'#243'rio de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 145
      Width = 718
      Height = 24
      object RLDBText1: TRLDBText
        Left = 32
        Top = 2
        Width = 16
        Height = 16
        DataField = 'ID'
        DataSource = DtsRelProduto
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 88
        Top = 2
        Width = 80
        Height = 16
        DataField = 'DESCRICAO'
        DataSource = DtsRelProduto
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 352
        Top = 2
        Width = 87
        Height = 16
        Alignment = taRightJustify
        DataField = 'QUANTIDADE'
        DataSource = DtsRelProduto
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 494
        Top = 2
        Width = 50
        Height = 16
        Alignment = taRightJustify
        DataField = 'PRECO'
        DataSource = DtsRelProduto
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 582
        Top = 2
        Width = 44
        Height = 16
        Alignment = taRightJustify
        DataField = 'TOTAL'
        DataSource = DtsRelProduto
        Text = ''
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 40
      BandType = btColumnHeader
      object RLLabel2: TRLLabel
        Left = 32
        Top = 18
        Width = 17
        Height = 16
        Caption = 'ID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel3: TRLLabel
        Left = 88
        Top = 18
        Width = 66
        Height = 16
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 360
        Top = 18
        Width = 78
        Height = 16
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel5: TRLLabel
        Left = 503
        Top = 18
        Width = 41
        Height = 16
        Caption = 'Pre'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RLLabel6: TRLLabel
        Left = 592
        Top = 18
        Width = 36
        Height = 16
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object DtsRelProduto: TDataSource
    DataSet = DmMain.QryRelproduto
    Left = 208
    Top = 400
  end
end
