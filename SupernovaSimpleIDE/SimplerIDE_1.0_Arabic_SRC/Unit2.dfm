object AboutBox: TAboutBox
  Left = 412
  Top = 242
  BorderStyle = bsDialog
  Caption = #1581#1608#1604' '#1575#1604#1576#1585#1606#1575#1605#1580
  ClientHeight = 194
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 281
    Height = 153
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    object ProductName: TLabel
      Left = 56
      Top = 16
      Width = 172
      Height = 13
      Caption = #1575#1587#1605' '#1575#1604#1605#1588#1585#1608#1593' : '#1605#1581#1585#1585' '#1575#1604#1587#1608#1576#1585#1606#1608#1601#1575
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object Version: TLabel
      Left = 64
      Top = 40
      Width = 160
      Height = 13
      Caption = #1575#1604#1575#1589#1583#1575#1585' '#1575#1604#1575#1608#1604' / '#1575#1604#1606#1587#1582#1577' '#1575#1604#1593#1585#1576#1610#1577
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object Copyright: TLabel
      Left = 40
      Top = 88
      Width = 197
      Height = 13
      Alignment = taCenter
      Caption = #1605#1576#1585#1605#1580' '#1575#1604#1605#1581#1585#1585' : '#1591#1585#1588#1610' '#1585#1575#1576#1581' / '#1575#1604#1580#1586#1575#1574#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object Comments: TLabel
      Left = 16
      Top = 112
      Width = 244
      Height = 13
      Alignment = taCenter
      Caption = 'Site : http://doublesvsoop.sourceforge.net'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      WordWrap = True
      IsControl = True
    end
    object Label1: TLabel
      Left = 48
      Top = 64
      Width = 184
      Height = 13
      Alignment = taCenter
      Caption = #1605#1576#1585#1605#1580' '#1575#1604#1605#1578#1585#1580#1605' : '#1605#1581#1605#1608#1583' '#1601#1575#1610#1583' / '#1605#1589#1585
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
  end
  object OKButton: TButton
    Left = 79
    Top = 164
    Width = 138
    Height = 25
    Caption = #1605#1608#1575#1601#1602
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
