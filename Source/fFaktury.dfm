inherited fFakturyForm: TfFakturyForm
  Caption = 'faktury'
  ClientHeight = 606
  ClientWidth = 780
  ExplicitWidth = 796
  ExplicitHeight = 645
  PixelsPerInch = 96
  TextHeight = 13
  inherited pl_bottom: TPanel
    Top = 565
    Width = 780
    ExplicitTop = 565
    ExplicitWidth = 780
    inherited btn_zapisz: TButton
      Left = 613
      Top = 6
      ExplicitLeft = 613
      ExplicitTop = 6
    end
    inherited bt_anuluj: TButton
      Left = 694
      Top = 6
      ExplicitLeft = 694
      ExplicitTop = 6
    end
  end
  inherited pl_all: TPanel
    Width = 780
    Height = 565
    ExplicitWidth = 780
    ExplicitHeight = 565
    object pgc_DaneFaktury: TPageControl
      AlignWithMargins = True
      Left = 218
      Top = 3
      Width = 559
      Height = 559
      ActivePage = ts_podstawowe_dane
      Align = alClient
      TabOrder = 0
      object ts_podstawowe_dane: TTabSheet
        Caption = 'Dane'
        object gb_daneFaktury: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 545
          Height = 525
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 523
          ExplicitHeight = 300
          object Label1: TLabel
            Left = 7
            Top = 11
            Width = 69
            Height = 13
            Caption = 'Numer faktury'
          end
          object Label2: TLabel
            Left = 7
            Top = 38
            Width = 85
            Height = 13
            Caption = 'Data wystawienia'
          end
          object Label3: TLabel
            Left = 7
            Top = 65
            Width = 67
            Height = 13
            Caption = 'Data dostawy'
          end
          object Label4: TLabel
            Left = 7
            Top = 92
            Width = 78
            Height = 13
            Caption = 'Termin p'#322'atno'#347'ci'
          end
          object lbMiejsceWystawienia: TLabel
            Left = 8
            Top = 123
            Width = 97
            Height = 13
            Caption = 'Miejsce wystawienia'
          end
          object lblWystawilFakture: TLabel
            Left = 10
            Top = 150
            Width = 82
            Height = 13
            Caption = 'Faktur'#281' wystawi'#322
          end
          object lblOdebralFakture: TLabel
            Left = 10
            Top = 178
            Width = 77
            Height = 13
            Caption = 'Faktur'#281' odebra'#322
          end
          object dbe_NumerFaktury: TDBEdit
            Left = 96
            Top = 7
            Width = 377
            Height = 21
            TabOrder = 0
          end
          object dt_data_wystawienia: TDateTimePicker
            Left = 96
            Top = 34
            Width = 186
            Height = 21
            Date = 44742.000000000000000000
            Time = 0.531516331022430700
            TabOrder = 1
          end
          object dt_data_dostawy: TDateTimePicker
            Left = 96
            Top = 61
            Width = 186
            Height = 21
            Date = 44742.000000000000000000
            Time = 0.531516331022430700
            TabOrder = 2
          end
          object dt_termin_platnosci: TDateTimePicker
            Left = 96
            Top = 88
            Width = 186
            Height = 21
            Date = 44742.000000000000000000
            Time = 0.531516331022430700
            TabOrder = 3
          end
          object edtMiejsceWystawienia: TEdit
            Left = 120
            Top = 115
            Width = 161
            Height = 21
            TabOrder = 4
          end
          object edtWystawilFakture: TEdit
            Left = 120
            Top = 147
            Width = 161
            Height = 21
            TabOrder = 5
          end
          object edtOdebralFakture: TEdit
            Left = 120
            Top = 175
            Width = 161
            Height = 21
            TabOrder = 6
          end
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Pozycje'
        ImageIndex = 1
      end
    end
    object pl_left: TPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 209
      Height = 559
      Align = alLeft
      TabOrder = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 565
      object lbl_sprzedawca: TLabel
        Left = 0
        Top = -1
        Width = 58
        Height = 13
        Caption = 'Sprzedawca'
      end
      object lbl_nabywca: TLabel
        Left = 0
        Top = 123
        Width = 44
        Height = 13
        Caption = 'Nabywca'
      end
      object spDodajSprzedawca: TSpeedButton
        Left = 132
        Top = 109
        Width = 23
        Height = 22
        Caption = '+'
        OnClick = spDodajSprzedawcaClick
      end
      object spWybierzSprzedawca: TSpeedButton
        Left = 161
        Top = 109
        Width = 23
        Height = 22
        Caption = 'Y'
        OnClick = spWybierzSprzedawcaClick
      end
      object spDodajNabywca: TSpeedButton
        Left = 132
        Top = 228
        Width = 23
        Height = 22
        Caption = '+'
      end
      object spWybierzNabywca: TSpeedButton
        Left = 161
        Top = 228
        Width = 23
        Height = 22
        Caption = 'Y'
        OnClick = spWybierzNabywcaClick
      end
      object m_sprzedawca: TMemo
        AlignWithMargins = True
        Left = 0
        Top = 18
        Width = 185
        Height = 89
        TabOrder = 0
      end
      object m_nabywca: TMemo
        AlignWithMargins = True
        Left = 0
        Top = 137
        Width = 185
        Height = 89
        TabOrder = 1
      end
    end
  end
  inherited BaseQuery: TADOQuery
    Left = 24
    Top = 272
  end
  object q_pozycje: TADOQuery [3]
    Parameters = <>
    Left = 24
    Top = 328
  end
  inherited dsBase: TDataSource
    Left = 64
    Top = 272
  end
  object ds_pozycje: TDataSource
    DataSet = q_pozycje
    Left = 64
    Top = 328
  end
  object qtmp: TADOQuery
    Parameters = <>
    Left = 24
    Top = 384
  end
end
