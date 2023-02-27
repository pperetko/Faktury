inherited FirmaForm: TFirmaForm
  Caption = 'Dane firmy'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pl_all: TPanel
    ExplicitTop = -6
    object lblNazwa: TLabel
      Left = 16
      Top = 28
      Width = 32
      Height = 13
      Caption = 'Nazwa'
    end
    object Label1: TLabel
      Left = 16
      Top = 55
      Width = 17
      Height = 13
      Caption = 'NIP'
    end
    object Label2: TLabel
      Left = 16
      Top = 82
      Width = 31
      Height = 13
      Caption = 'Regon'
    end
    object edtNazwa: TDBEdit
      Left = 72
      Top = 24
      Width = 353
      Height = 21
      DataField = 'Nazwa'
      DataSource = dsBase
      TabOrder = 0
    end
    object edtNip: TDBEdit
      Left = 72
      Top = 51
      Width = 121
      Height = 21
      DataField = 'NIP'
      DataSource = dsBase
      TabOrder = 1
    end
    object edtRegon: TDBEdit
      Left = 72
      Top = 78
      Width = 121
      Height = 21
      DataField = 'REGON'
      DataSource = dsBase
      TabOrder = 2
    end
    object gbAdres: TGroupBox
      Left = 16
      Top = 105
      Width = 409
      Height = 209
      Caption = 'Adres'
      TabOrder = 3
      object Label5: TLabel
        Left = 8
        Top = 74
        Width = 18
        Height = 13
        Caption = 'Kod'
      end
      object Label6: TLabel
        Left = 8
        Top = 101
        Width = 40
        Height = 13
        Caption = 'Nr domu'
      end
      object Label7: TLabel
        Left = 176
        Top = 101
        Width = 41
        Height = 13
        Caption = 'Nr lokalu'
      end
      object lblGmina: TLabel
        Left = 8
        Top = 127
        Width = 29
        Height = 13
        Caption = 'Gmina'
      end
      object lblPowiat: TLabel
        Left = 8
        Top = 155
        Width = 32
        Height = 13
        Caption = 'Powiat'
      end
      object lblMiejscowosc: TLabel
        Left = 8
        Top = 18
        Width = 59
        Height = 13
        Caption = 'Miejscowo'#347#263
      end
      object lblUlica: TLabel
        Left = 8
        Top = 45
        Width = 22
        Height = 13
        Caption = 'Ulica'
      end
      object Label3: TLabel
        Left = 4
        Top = 182
        Width = 68
        Height = 13
        Caption = 'Wojew'#243'dztwo'
      end
      object edtKodPocztowy: TDBEdit
        Left = 73
        Top = 71
        Width = 121
        Height = 21
        DataField = 'KOD'
        DataSource = dsAdres
        TabOrder = 2
      end
      object edtNrDomu: TDBEdit
        Left = 73
        Top = 98
        Width = 99
        Height = 21
        DataField = 'NrBudynku'
        DataSource = dsAdres
        TabOrder = 3
      end
      object edtnrLokalu: TDBEdit
        Left = 223
        Top = 98
        Width = 98
        Height = 21
        DataField = 'NrLokalu'
        DataSource = dsAdres
        TabOrder = 4
      end
      object edtGmina: TDBEdit
        Left = 73
        Top = 125
        Width = 248
        Height = 21
        DataField = 'Gmina'
        DataSource = dsAdres
        TabOrder = 5
      end
      object edtPowiat: TDBEdit
        Left = 73
        Top = 152
        Width = 248
        Height = 21
        DataField = 'Powiat'
        DataSource = dsAdres
        TabOrder = 6
      end
      object edtMiejscowosc: TDBEdit
        Left = 73
        Top = 15
        Width = 320
        Height = 21
        DataField = 'Miejscowosc'
        DataSource = dsAdres
        TabOrder = 0
      end
      object edtUlica: TDBEdit
        Left = 73
        Top = 42
        Width = 320
        Height = 21
        DataField = 'Ulica'
        DataSource = dsAdres
        TabOrder = 1
      end
      object edtWojewodztwo: TDBEdit
        Left = 73
        Top = 179
        Width = 248
        Height = 21
        DataField = 'Wojewodztwo'
        DataSource = dsAdres
        TabOrder = 7
      end
    end
  end
  inherited BaseQuery: TADOQuery
    Parameters = <
      item
        Name = 'id'
        DataType = ftInteger
        Value = 0
      end>
    SQL.Strings = (
      'Select * from Firma'
      '')
    object BaseQueryID: TIntegerField
      FieldName = 'ID'
    end
    object BaseQueryNIP: TStringField
      FieldName = 'NIP'
      Size = 40
    end
    object BaseQueryREGON: TStringField
      FieldName = 'REGON'
      Size = 40
    end
    object BaseQueryAdresId: TIntegerField
      FieldName = 'AdresId'
    end
    object BaseQueryNazwa: TStringField
      FieldName = 'Nazwa'
      Size = 200
    end
  end
  object qAdres: TADOQuery
    Parameters = <
      item
        Name = 'cid'
        DataType = ftInteger
        Value = 0
      end>
    SQL.Strings = (
      'Select * from Adres where id = :cid')
    Left = 256
    Top = 352
    object qAdresID: TIntegerField
      FieldName = 'ID'
    end
    object qAdresKOD: TStringField
      FieldName = 'KOD'
    end
    object qAdresMiejscowosc: TStringField
      FieldName = 'Miejscowosc'
      Size = 50
    end
    object qAdresUlica: TStringField
      FieldName = 'Ulica'
      Size = 100
    end
    object qAdresNrBudynku: TStringField
      FieldName = 'NrBudynku'
      Size = 10
    end
    object qAdresNrLokalu: TStringField
      FieldName = 'NrLokalu'
      Size = 10
    end
    object qAdresPoczta: TStringField
      FieldName = 'Poczta'
      Size = 50
    end
    object qAdresGmina: TStringField
      FieldName = 'Gmina'
      Size = 50
    end
    object qAdresPowiat: TStringField
      FieldName = 'Powiat'
      Size = 50
    end
    object qAdresWojewodztwo: TStringField
      FieldName = 'Wojewodztwo'
      Size = 50
    end
  end
  object dsAdres: TDataSource
    DataSet = qAdres
    Left = 320
    Top = 352
  end
end
