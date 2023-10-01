object FrmMain: TFrmMain
  Left = 0
  Top = 0
  Caption = 'Sistema de cadastro de produto'
  ClientHeight = 562
  ClientWidth = 1012
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poScreenCenter
  TextHeight = 15
  object EdtParImpar: TEdit
    Left = 56
    Top = 88
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 56
    Top = 117
    Width = 121
    Height = 25
    Caption = '8 - Par ou '#205'mpar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 216
    Top = 117
    Width = 177
    Height = 26
    Caption = #8220'9 - Contagem de 1 at'#233' 100'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ListBox1: TListBox
    Left = 72
    Top = 216
    Width = 169
    Height = 233
    ItemHeight = 15
    Items.Strings = (
      'Leandro'
      'Delphi'
      'Android'
      'Java'
      'Horse')
    TabOrder = 3
  end
  object ListBox2: TListBox
    Left = 456
    Top = 216
    Width = 169
    Height = 233
    ItemHeight = 15
    TabOrder = 4
  end
  object Button3: TButton
    Left = 272
    Top = 304
    Width = 169
    Height = 49
    Caption = '10 '#8211' Copiar Itens'
    TabOrder = 5
    OnClick = Button3Click
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 16
    object Categoria1: TMenuItem
      Caption = 'Categorias'
      OnClick = Categoria1Click
    end
    object Produto1: TMenuItem
      Caption = 'Produtos'
      OnClick = Produto1Click
    end
    object ConsultadeProdutos1: TMenuItem
      Caption = 'Consulta de Produtos'
      OnClick = ConsultadeProdutos1Click
    end
    object Ralatrio1: TMenuItem
      Caption = 'Ralat'#243'rio'
      OnClick = Ralatrio1Click
    end
  end
end
