object FMAIN: TFMAIN
  Left = 250
  Top = 133
  AlphaBlendValue = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'TB FSM'
  ClientHeight = 246
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    000000000000000000000000000000000000000000000000000000000000AAAA
    0000000000000000000000000000AAAAAAAA000000000000000000000000AAAA
    AAAAAAAAAAA00000000000000000AAAAAAAAAAAAAAAAAAAAA00000000000AAAA
    AAAAAAAAAAAAAAAAAAA000000000AAAAAAAAAAAAAAAAAAAAAAAA00000000AAAA
    AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACCCA
    AAAAAAAAAAAAAAAAAAAAAAAAAAAACCCCAAAAAAAAAAAAAAAAAAAAAAAAAAAACCCC
    CCAAAAAAAAAAAAAAAAAAAAAAAAAACCCCCCCCCAAAAAAAAAAAAAAAAAAAAAAACCCC
    CCCCCCCCCCCCCAAAAAAAAAAAAAAACCCCCCCCCCCCCCCCCCCAAAAAAAAAAAAA9CCC
    CCCCCCCCCCCCCCCCCCCAAAAAAAAA99CCCCCCCCCCCCCCCCCCCCCCCAAAAAAA9999
    CCCCCCCCCCCCCCCCCCCCCCCCCCCC999999CCCCCCCCCCCCCCCCCCCCCCCCCC9999
    99999CCCCCCCCCCCCCCCCCCCCCCC99999999999999CCCCCCCCCCCCCCCCCC9999
    999999999999CCCCCCCCCCCCCCCC999999999999999999CCCCCCCCCCCCCC9999
    9999999999999CCCCCCCCCCCCCCCB9999999999999999CCCCCCCCCCCCCCCBB99
    99999999999999CCCCCCCCCCCCCCBBBB99999999999999CCCCCCCCCCCCCCBBBB
    BB99999999999999CCCCCCCCCCCCBBBBBBBBB9999999999999999CCCCCCCBBBB
    BBBBBBBB99999999999999CCCCCCBBBBBBBBBBBBBBB99999999999CCCCCCFFFF
    FFFFFFFFFFFF0FFFFFFF00FFFFFF0001FFFF000007FF000001FF000000FF0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object P: TLabel
    Left = 10
    Top = 10
    Width = 24
    Height = 37
    AutoSize = False
    Caption = 'X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clLime
    Font.Height = -28
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object E: TLabel
    Left = 335
    Top = 197
    Width = 24
    Height = 37
    AutoSize = False
    Caption = 'O'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -28
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
    Visible = False
  end
  object AL: TActionList
    Left = 264
    Top = 8
    object MoveToLeft: TAction
      Category = 'PlayerControl'
      Caption = 'MoveToLeft'
      ShortCut = 37
      OnExecute = MoveToLeftExecute
    end
    object MoveToRight: TAction
      Category = 'PlayerControl'
      Caption = 'MoveToRight'
      ShortCut = 39
      OnExecute = MoveToRightExecute
    end
    object MoveToUp: TAction
      Category = 'PlayerControl'
      Caption = 'MoveToUp'
      ShortCut = 38
      OnExecute = MoveToUpExecute
    end
    object MoveToDown: TAction
      Category = 'PlayerControl'
      Caption = 'MoveToDown'
      ShortCut = 40
      OnExecute = MoveToDownExecute
    end
    object Exit: TAction
      Category = 'PlayerControl'
      Caption = 'Exit'
      ShortCut = 27
      OnExecute = ExitExecute
    end
  end
  object ET: TTimer
    Enabled = False
    Interval = 100
    OnTimer = ETTimer
    Left = 232
    Top = 8
  end
end
