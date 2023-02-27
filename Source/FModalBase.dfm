object ModalBase: TModalBase
  Left = 0
  Top = 0
  ClientHeight = 403
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pl_bottom: TPanel
    Left = 0
    Top = 362
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btn_zapisz: TButton
      Left = 471
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Zapisz'
      TabOrder = 0
      OnClick = btn_zapiszClick
    end
    object bt_anuluj: TButton
      Left = 552
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Anuluj'
      ModalResult = 2
      TabOrder = 1
      OnClick = bt_anulujClick
    end
  end
  object pl_all: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 362
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
  end
  object BaseQuery: TADOQuery
    Parameters = <>
    Left = 120
    Top = 360
  end
  object dsBase: TDataSource
    DataSet = BaseQuery
    Left = 184
    Top = 360
  end
end
