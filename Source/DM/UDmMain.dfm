object DmMain: TDmMain
  Height = 480
  Width = 640
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Prova\DB\PROVA.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Port=3050'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 96
    Top = 72
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 200
    Top = 72
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 312
    Top = 64
  end
  object QryCategoria: TFDQuery
    BeforePost = QryCategoriaBeforePost
    AfterPost = QryCategoriaAfterPost
    Connection = FDConnection1
    SQL.Strings = (
      'select * from categoria'
      'order by descricao')
    Left = 96
    Top = 176
    object QryCategoriaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCategoriaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object QryProduto: TFDQuery
    BeforePost = QryProdutoBeforePost
    AfterPost = QryProdutoAfterPost
    AfterScroll = QryProdutoAfterScroll
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produto'
      'order by descricao')
    Left = 224
    Top = 176
    object QryProdutoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object QryProdutoQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object QryProdutoPRECO: TFloatField
      FieldName = 'PRECO'
      Origin = 'PRECO'
    end
  end
  object QryCategoriaProduto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select cp.id, cp.id_produto, cp.id_categoria,'
      'c.descricao as categoria,'
      'p.descricao as produto'
      'from CATEGORIA_PRODUTO cp'
      'inner join categoria c on (cp.id_categoria = c.id)'
      'inner join produto p on (cp.id_produto = p.id)'
      'where'
      'cp.id_produto = :id_produto')
    Left = 368
    Top = 184
    ParamData = <
      item
        Name = 'ID_PRODUTO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object QryCategoriaProdutoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCategoriaProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object QryCategoriaProdutoID_CATEGORIA: TIntegerField
      FieldName = 'ID_CATEGORIA'
      Origin = 'ID_CATEGORIA'
    end
    object QryCategoriaProdutoCATEGORIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CATEGORIA'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object QryCategoriaProdutoPRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO'
      Origin = 'DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DtsProduto: TDataSource
    DataSet = QryProduto
    Left = 224
    Top = 240
  end
  object QryConsultaProduto: TFDQuery
    AfterScroll = QryConsultaProdutoAfterScroll
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produto'
      'order by descricao')
    Left = 96
    Top = 344
    object IntegerField1: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object FloatField1: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object FloatField2: TFloatField
      FieldName = 'PRECO'
      Origin = 'PRECO'
    end
  end
  object QryRelproduto: TFDQuery
    AfterScroll = QryConsultaProdutoAfterScroll
    Connection = FDConnection1
    SQL.Strings = (
      'select p.* , p.quantidade * p.preco as TOTAL from produto p')
    Left = 232
    Top = 336
    object IntegerField2: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
    object FloatField3: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object FloatField4: TFloatField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      DisplayFormat = '##0.00'
    end
    object QryRelprodutoTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
      DisplayFormat = '##0.00'
    end
  end
end
