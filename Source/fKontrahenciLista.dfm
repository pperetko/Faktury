inherited KontrahenciListaForm: TKontrahenciListaForm
  Caption = 'Kontrahenci'
  PixelsPerInch = 96
  TextHeight = 13
  inherited sgList: TStringGrid
    Top = 27
    Height = 268
    OnDblClick = sgListDblClick
    ExplicitTop = 27
    ExplicitHeight = 268
  end
  inherited plTop: TPanel
    Height = 27
    ExplicitHeight = 27
    object ToolBar1: TToolBar
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 629
      Height = 29
      TabOrder = 0
      object tbAdd: TToolButton
        AlignWithMargins = True
        Left = 0
        Top = 0
        Hint = 'Dodaj'
        Caption = 'Dodaj'
        ImageIndex = 0
        OnClick = tbAddClick
      end
      object tbDelete: TToolButton
        Left = 23
        Top = 0
        Caption = 'Usu'#324
        ImageIndex = 1
        OnClick = tbDeleteClick
      end
      object tbUpdate: TToolButton
        Left = 46
        Top = 0
        Caption = 'Modyfikuj'
        ImageIndex = 2
        OnClick = tbUpdateClick
      end
      object ToolButton1: TToolButton
        Left = 69
        Top = 0
        Width = 20
        Caption = 'ToolButton1'
        ImageIndex = 3
        Style = tbsSeparator
      end
      object tbRefresh: TToolButton
        Left = 89
        Top = 0
        Caption = 'Od'#347'wie'#380
        ImageIndex = 3
        OnClick = tbRefreshClick
      end
    end
  end
  object qtmp: TADOQuery
    Parameters = <>
    Left = 48
    Top = 240
  end
end
