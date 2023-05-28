object Form10: TForm10
  Left = 355
  Top = 127
  Width = 709
  Height = 551
  Caption = 'Form10'
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 16
    Top = 360
    Width = 641
    Height = 153
    DataSource = Form8.ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object grp1: TGroupBox
    Left = 16
    Top = 8
    Width = 641
    Height = 345
    Caption = 'grp1'
    TabOrder = 1
    object lbl1: TLabel
      Left = 96
      Top = 24
      Width = 463
      Height = 22
      Caption = 'TAMBAH DATA JADWAL PELAJARAN PRAKTIKUM'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 16
      Top = 56
      Width = 30
      Height = 13
      Caption = 'KELAS'
    end
    object lbl3: TLabel
      Left = 16
      Top = 88
      Width = 64
      Height = 13
      Caption = 'MATAKULIAH'
    end
    object lbl4: TLabel
      Left = 16
      Top = 120
      Width = 54
      Height = 13
      Caption = 'JAM MULAI'
    end
    object lbl5: TLabel
      Left = 16
      Top = 152
      Width = 54
      Height = 13
      Caption = 'JAM AKHIR'
    end
    object lbl6: TLabel
      Left = 16
      Top = 184
      Width = 25
      Height = 13
      Caption = 'HARI'
    end
    object lbl7: TLabel
      Left = 16
      Top = 216
      Width = 46
      Height = 13
      Caption = 'TANGGAL'
    end
    object lbl8: TLabel
      Left = 16
      Top = 248
      Width = 49
      Height = 13
      Caption = 'RUANGAN'
    end
    object lbl9: TLabel
      Left = 16
      Top = 276
      Width = 58
      Height = 13
      Caption = 'KEHADIRAN'
    end
    object lbl10: TLabel
      Left = 96
      Top = 56
      Width = 4
      Height = 13
      Caption = ':'
    end
    object lbl11: TLabel
      Left = 96
      Top = 88
      Width = 4
      Height = 13
      Caption = ':'
    end
    object lbl12: TLabel
      Left = 96
      Top = 120
      Width = 4
      Height = 13
      Caption = ':'
    end
    object lbl13: TLabel
      Left = 96
      Top = 152
      Width = 4
      Height = 13
      Caption = ':'
    end
    object lbl14: TLabel
      Left = 96
      Top = 184
      Width = 4
      Height = 13
      Caption = ':'
    end
    object lbl15: TLabel
      Left = 96
      Top = 216
      Width = 4
      Height = 13
      Caption = ':'
    end
    object lbl16: TLabel
      Left = 96
      Top = 248
      Width = 4
      Height = 13
      Caption = ':'
    end
    object lbl17: TLabel
      Left = 96
      Top = 276
      Width = 4
      Height = 13
      Caption = ':'
    end
    object edt1: TEdit
      Left = 112
      Top = 56
      Width = 513
      Height = 21
      TabOrder = 0
      Text = '0'
    end
    object edt2: TEdit
      Left = 112
      Top = 88
      Width = 513
      Height = 21
      TabOrder = 1
      Text = '0'
    end
    object edt3: TEdit
      Left = 112
      Top = 120
      Width = 513
      Height = 21
      TabOrder = 2
      Text = '00:00'
    end
    object edt4: TEdit
      Left = 112
      Top = 152
      Width = 513
      Height = 21
      TabOrder = 3
      Text = '00:00'
    end
    object edt5: TEdit
      Left = 112
      Top = 248
      Width = 513
      Height = 21
      TabOrder = 4
      Text = '0'
    end
    object edt6: TEdit
      Left = 112
      Top = 276
      Width = 513
      Height = 21
      TabOrder = 5
      Text = '0'
    end
    object cbb1: TComboBox
      Left = 112
      Top = 184
      Width = 513
      Height = 21
      ItemHeight = 13
      TabOrder = 6
      Text = '0'
      Items.Strings = (
        'Senin'
        'Selasa'
        'Rabu'
        'Kamis'
        'Jumat'
        'Sabtu')
    end
    object btn2: TButton
      Left = 272
      Top = 304
      Width = 107
      Height = 33
      Caption = 'UBAH'
      TabOrder = 7
      OnClick = btn2Click
    end
    object btn3: TButton
      Left = 400
      Top = 304
      Width = 107
      Height = 33
      Caption = 'HAPUS'
      TabOrder = 8
      OnClick = btn3Click
    end
    object btn4: TButton
      Left = 518
      Top = 304
      Width = 107
      Height = 33
      Caption = 'BATAL'
      TabOrder = 9
      OnClick = btn4Click
    end
    object btn5: TButton
      Left = 16
      Top = 304
      Width = 107
      Height = 33
      Caption = 'BARU'
      TabOrder = 10
    end
    object btn1: TButton
      Left = 144
      Top = 304
      Width = 107
      Height = 33
      Caption = 'SIMPAN'
      TabOrder = 11
      OnClick = btn1Click
    end
    object dtp1: TDateTimePicker
      Left = 112
      Top = 216
      Width = 513
      Height = 21
      Date = 45070.334132731480000000
      Time = 45070.334132731480000000
      TabOrder = 12
    end
  end
  object tbl1: TADOTable
    Connection = Form8.con1
    CursorType = ctStatic
    TableName = 'jadwal_table'
    Left = 592
    Top = 24
  end
end
