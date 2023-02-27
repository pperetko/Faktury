object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'faktury'
  ClientHeight = 714
  ClientWidth = 1104
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 193
    Top = 41
    Height = 654
    ExplicitLeft = 280
    ExplicitTop = 320
    ExplicitHeight = 100
  end
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 193
    Height = 654
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 47
    ExplicitHeight = 618
    object Menu: TListBox
      Left = 0
      Top = 0
      Width = 193
      Height = 654
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Style = lbOwnerDrawVariable
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold, fsUnderline]
      ItemHeight = 20
      Items.Strings = (
        'Kontrahenci'
        'Faktury')
      ParentFont = False
      TabOrder = 0
      OnClick = MenuClick
      OnDblClick = MenuClick
      ExplicitTop = 32
      ExplicitHeight = 682
    end
  end
  object pl_top: TPanel
    Left = 0
    Top = 0
    Width = 1104
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitWidth = 185
  end
  object pgDane: TPageControl
    Left = 196
    Top = 41
    Width = 908
    Height = 654
    ActivePage = tsFaktury
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 188
    ExplicitTop = 35
    object tsFaktury: TTabSheet
      Caption = 'Faktury'
      ExplicitLeft = 5
      ExplicitTop = 22
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lv_faktury: TListView
        Left = 0
        Top = 0
        Width = 900
        Height = 626
        Align = alClient
        Columns = <>
        TabOrder = 0
        ViewStyle = vsReport
        ExplicitLeft = -8
        ExplicitTop = 9
        ExplicitWidth = 908
        ExplicitHeight = 617
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 695
    Width = 1104
    Height = 19
    Panels = <>
  end
  object ADOConnection: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=1qaz@WSX3edc;Persist Security Info=' +
      'True;User ID=sa;Initial Catalog=faktury;Data Source=pperetko\pp'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 196
    Top = 208
  end
  object MainMenu1: TMainMenu
    Left = 696
    Top = 24
    object Plik1: TMenuItem
      Caption = 'Plik'
      object Zakocz1: TMenuItem
        Caption = 'Zako'#324'cz'
      end
    end
    object Ustawienia1: TMenuItem
      Caption = 'Ustawienia'
      object Danefirmy1: TMenuItem
        Caption = 'Dane firmy'
        OnClick = Danefirmy1Click
      end
    end
  end
end
