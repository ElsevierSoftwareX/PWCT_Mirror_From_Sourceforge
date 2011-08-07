object AboutBox: TAboutBox
  Left = 412
  Top = 242
  BorderStyle = bsDialog
  Caption = 'About'
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
      Left = 40
      Top = 16
      Width = 191
      Height = 13
      Caption = 'Product Name : Supernova Editor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      IsControl = True
    end
    object Version: TLabel
      Left = 88
      Top = 40
      Width = 73
      Height = 13
      Caption = 'Version : 1.0'
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
      Width = 208
      Height = 13
      Alignment = taCenter
      Caption = 'Editor By   : Rabeh Torchi - Algeria  '
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
      Left = 40
      Top = 64
      Width = 206
      Height = 13
      Alignment = taCenter
      Caption = 'Compiler By : Mahmoud Samir Fayed'
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
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 1
  end
end
