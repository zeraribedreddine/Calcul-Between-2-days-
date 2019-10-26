object Form1: TForm1
  Left = 427
  Top = 165
  Caption = 'Form1'
  ClientHeight = 509
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 509
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 587
    ExplicitHeight = 493
    object Label1: TLabel
      Left = 94
      Top = 26
      Width = 108
      Height = 35
      Caption = 'Date ONE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 426
      Top = 26
      Width = 113
      Height = 35
      Caption = 'Date TWO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 360
      Top = 102
      Width = 253
      Height = 31
      BevelKind = bkFlat
      BiDiMode = bdLeftToRight
      Date = 43762.964271331020000000
      Time = 43762.964271331020000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
    end
    object DateTimePicker2: TDateTimePicker
      Left = 38
      Top = 102
      Width = 243
      Height = 31
      BevelKind = bkFlat
      BiDiMode = bdLeftToRight
      Date = 43762.964316400470000000
      Time = 43762.964316400470000000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 1
    end
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 6
      Top = 304
      Width = 633
      Height = 199
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alBottom
      BiDiMode = bdLeftToRight
      Caption = 'Result'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Traditional Arabic'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      ExplicitTop = 288
      ExplicitWidth = 575
      object Labe_result: TLabel
        Left = 31
        Top = 84
        Width = 25
        Height = 58
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -48
        Font.Name = 'Roboto Cn'
        Font.Style = []
        ParentFont = False
      end
    end
    object Button2: TButton
      Left = 482
      Top = 185
      Width = 131
      Height = 74
      Caption = 'Clear '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 38
      Top = 184
      Width = 355
      Height = 74
      Caption = 'Calcul '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Roboto Cn'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button3Click
    end
  end
end
