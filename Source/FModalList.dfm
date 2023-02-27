object ModalList: TModalList
  Left = 0
  Top = 0
  ClientHeight = 336
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
  object sgList: TStringGrid
    Left = 0
    Top = 41
    Width = 635
    Height = 254
    Align = alClient
    DefaultRowHeight = 20
    DrawingStyle = gdsClassic
    FixedColor = clGrayText
    FixedCols = 0
    GradientEndColor = clSilver
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
    TabOrder = 0
  end
  object plTop: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
  end
  object plBottom: TPanel
    Left = 0
    Top = 295
    Width = 635
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      635
      41)
    object btnZakoncz: TButton
      Left = 557
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Zako'#324'cz'
      ModalResult = 1
      TabOrder = 0
    end
  end
  object BaseQuery: TADOQuery
    Parameters = <>
    Left = 48
    Top = 176
  end
  object BaseDS: TDataSource
    DataSet = BaseQuery
    Left = 128
    Top = 192
  end
end
