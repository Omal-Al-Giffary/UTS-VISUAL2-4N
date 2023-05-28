object Form5: TForm5
  Left = 450
  Top = 132
  Width = 755
  Height = 451
  Caption = 'KONDISIONAL 2'
  Color = clMaroon
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 104
    Width = 88
    Height = 13
    Caption = 'NILAI KEHADIRAN'
  end
  object lbl2: TLabel
    Left = 16
    Top = 136
    Width = 63
    Height = 13
    Caption = 'NILAI TUGAS'
  end
  object lbl3: TLabel
    Left = 16
    Top = 168
    Width = 49
    Height = 13
    Caption = 'NILAI UTS'
  end
  object lbl4: TLabel
    Left = 16
    Top = 200
    Width = 69
    Height = 13
    Caption = 'NILAI HARIAN'
  end
  object lbl5: TLabel
    Left = 16
    Top = 232
    Width = 50
    Height = 13
    Caption = 'NILAI UAS'
  end
  object lbl6: TLabel
    Left = 392
    Top = 104
    Width = 32
    Height = 13
    Caption = 'TOTAL'
  end
  object lbl7: TLabel
    Left = 392
    Top = 136
    Width = 33
    Height = 13
    Caption = 'GRATE'
  end
  object lbl8: TLabel
    Left = 392
    Top = 168
    Width = 18
    Height = 13
    Caption = 'KET'
  end
  object pnl1: TPanel
    Left = 16
    Top = 16
    Width = 353
    Height = 41
    Caption = 'CEK BOBOT NILAI SISWA'
    TabOrder = 0
  end
  object pnl2: TPanel
    Left = 120
    Top = 64
    Width = 121
    Height = 33
    Caption = 'NILAI'
    TabOrder = 1
  end
  object pnl3: TPanel
    Left = 248
    Top = 64
    Width = 121
    Height = 33
    Caption = 'BOBOT'
    TabOrder = 2
  end
  object edt1: TEdit
    Left = 120
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0'
  end
  object edt2: TEdit
    Left = 120
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 4
    Text = '0'
  end
  object edt3: TEdit
    Left = 120
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object edt4: TEdit
    Left = 120
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '0'
  end
  object edt5: TEdit
    Left = 120
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 7
    Text = '0'
  end
  object edt6: TEdit
    Left = 248
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 8
    Text = '0'
  end
  object edt7: TEdit
    Left = 248
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 9
    Text = '0'
  end
  object edt8: TEdit
    Left = 248
    Top = 168
    Width = 121
    Height = 21
    TabOrder = 10
    Text = '0'
  end
  object edt9: TEdit
    Left = 248
    Top = 200
    Width = 121
    Height = 21
    TabOrder = 11
    Text = '0'
  end
  object edt10: TEdit
    Left = 248
    Top = 232
    Width = 121
    Height = 21
    TabOrder = 12
    Text = '0'
  end
  object edt11: TEdit
    Left = 440
    Top = 104
    Width = 241
    Height = 21
    TabOrder = 13
    Text = '0'
  end
  object edt12: TEdit
    Left = 440
    Top = 136
    Width = 241
    Height = 21
    TabOrder = 14
    Text = '0'
  end
  object edt13: TEdit
    Left = 440
    Top = 168
    Width = 241
    Height = 21
    TabOrder = 15
    Text = '0'
  end
  object btn1: TButton
    Left = 16
    Top = 264
    Width = 113
    Height = 33
    Caption = 'HITUNG'
    TabOrder = 16
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 136
    Top = 264
    Width = 113
    Height = 33
    Caption = 'HAPUS'
    TabOrder = 17
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 256
    Top = 264
    Width = 113
    Height = 33
    Caption = 'KELUAR'
    TabOrder = 18
    OnClick = btn3Click
  end
end
