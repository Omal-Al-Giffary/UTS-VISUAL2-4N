object Form4: TForm4
  Left = 406
  Top = 201
  Width = 481
  Height = 321
  Caption = 'KONDISIONAL 1'
  Color = clBtnShadow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 120
    Top = 32
    Width = 36
    Height = 13
    Caption = 'NILAI 1'
  end
  object lbl2: TLabel
    Left = 120
    Top = 64
    Width = 36
    Height = 13
    Caption = 'NILAI 2'
  end
  object lbl3: TLabel
    Left = 120
    Top = 96
    Width = 36
    Height = 13
    Caption = 'NILAI 3'
  end
  object lbl4: TLabel
    Left = 120
    Top = 128
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object lbl5: TLabel
    Left = 120
    Top = 160
    Width = 34
    Height = 13
    Caption = 'GRADE'
  end
  object edt1: TEdit
    Left = 176
    Top = 32
    Width = 65
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object edt2: TEdit
    Left = 176
    Top = 64
    Width = 65
    Height = 21
    TabOrder = 1
    Text = '0'
  end
  object edt3: TEdit
    Left = 176
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 2
    Text = '0'
  end
  object edt4: TEdit
    Left = 176
    Top = 128
    Width = 137
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object edt5: TEdit
    Left = 176
    Top = 160
    Width = 137
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object edt6: TEdit
    Left = 248
    Top = 32
    Width = 65
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object edt7: TEdit
    Left = 248
    Top = 64
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object edt8: TEdit
    Left = 248
    Top = 96
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object btn1: TButton
    Left = 120
    Top = 192
    Width = 57
    Height = 25
    Caption = 'PROSES'
    TabOrder = 8
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 256
    Top = 192
    Width = 59
    Height = 25
    Caption = 'CLOSE'
    TabOrder = 9
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 192
    Top = 192
    Width = 57
    Height = 25
    Caption = 'CLEAR'
    TabOrder = 10
    OnClick = btn3Click
  end
end
