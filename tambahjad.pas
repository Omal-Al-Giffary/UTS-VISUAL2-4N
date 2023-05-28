unit tambahjad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, DB, ADODB;

type
  TForm10 = class(TForm)
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    edt6: TEdit;
    cbb1: TComboBox;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn1: TButton;
    dtp1: TDateTimePicker;
    tbl1: TADOTable;
    procedure btn1Click(Sender: TObject);
    procedure bersih;
    procedure dbgrd1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
   updt:string;
implementation

uses datelat1;

{$R *.dfm}

procedure TForm10.bersih;
begin
  edt1.Text:='-';
  edt3.Text:='-';
  edt3.Text:='00:00';
  edt4.Text:='00:00';
  cbb1.Text:='===PILIH HARI===';
  edt5.Text:='-';
  edt6.Text:='-';

   Form8.qry1.SQL.Clear;
  Form8.qry1.SQL.Add('select * from jadwal_table');
  Form8.qry1.Open;
  dbgrd1.Columns[0].Width:=20;
  dbgrd1.Columns[1].Width:=50;
  dbgrd1.Columns[2].Width:=50;
  dbgrd1.Columns[3].Width:=90;
  dbgrd1.Columns[4].Width:=60;
  dbgrd1.Columns[5].Width:=60;
  dbgrd1.Columns[6].Width:=110;
  dbgrd1.Columns[7].Width:=80;
  btn2.Enabled:=True;
  btn3.Enabled:=True;
end;

procedure TForm10.btn1Click(Sender: TObject);
begin
  if (edt3.Text = '') or (edt3.Text = '00:00') or (edt4.Text = '') or (edt4.Text = '00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (cbb1.Text = '') or (cbb1.Text = '--Pilih Hari--') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (edt5.Text = '') or (edt5.Text = '-') or (edt2.Text = '') or (edt2.Text = '-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
  end
  else if (edt1.Text = '') or (edt1.Text = '-') or (edt6.Text = '') or (edt6.Text = '0') then
  begin
    ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
  end
  else if
  (form8.qry1.Locate('hari',cbb1.Text,[])) or (form8.qry1.Locate('jam_mulai',edt3.Text,[])) then
  begin
    ShowMessage('Data Sudah Ada Di Dalam Sistem');
    edt3.SetFocus
  end
  else
  begin

  tbl1.insert;
  tbl1.FieldByName('jam_mulai').AsString := edt3.Text;
  tbl1.FieldByName('jam_akhir').AsString := edt4.Text;
  tbl1.FieldByName('hari').AsString := cbb1.Text;
  tbl1.FieldByName('tanggal').AsDateTime := dtp1.Date;
  tbl1.FieldByName('ruang').AsString :=  edt5.Text;
  tbl1.FieldByName('matkul').AsString :=  edt2.Text;
  tbl1.FieldByName('kelas').AsString :=  edt1.Text;
  tbl1.FieldByName('kehadiran_total').AsString :=  edt6.Text;
  tbl1.Post;
  bersih;
  end;
end;

procedure TForm10.dbgrd1CellClick(Column: TColumn);
begin
try
updt :=tbl1.Fields[0].AsString;
edt3.Text:= tbl1.Fields[1].AsString;
edt4.Text:= tbl1.Fields[2].AsString;
cbb1.Text:= tbl1.Fields[3].AsString;
dtp1.Date:=tbl1.Fields[4].AsDateTime;
edt5.Text:= tbl1.Fields[5].AsString;
edt2.Text:= tbl1.Fields[6].AsString;
edt1.Text:= tbl1.Fields[7].AsString;
edt6.Text:= tbl1.Fields[8].AsString;

btn2.Enabled:= True;
btn3.Enabled:= True;
Except

end;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
 bersih;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
  if (edt1.text='') or(edt1.text='-') or (edt2.text='') or(edt2.text='-') then
  begin
       ShowMessage('DATA KELAS DAN MATA KULIAH BELUM DIISI DENGAN BENAR');
  end else
  if (edt3.text='') or(edt3.text='00:00') or (edt4.text='') or (edt4.text='00:00') then
  begin
       ShowMessage('DATA JAM BELUM DIISI DENGAN BENAR');
  end else
  if (cbb1.Text='')or(cbb1.Text='===PILIH HARI===') then
  begin
      ShowMessage('DATA HARI BELUM DIISI DENGAN BENAR');
  end else
  if (edt5.text='') or(edt5.text='-') or (edt6.text='') or (edt6.text='-') then
  begin
       ShowMessage('DATA RUANGAN ATAU KEHADIRAN BELUM DIISI DENGAN BENAR');
  end else
  if (edt3.Text=Form8.qry1.Fields[1].AsString) and (edt4.Text=Form8.qry1.Fields[2].AsString) then
    begin
      ShowMessage('Data Tidak Ada Perubahan');
    end;
  begin
  tbl1.Edit;
    tbl1.FieldByName('jam_mulai').AsString := edt3.Text;
    tbl1.FieldByName('jam_akhir').AsString := edt4.Text;
    tbl1.FieldByName('hari').AsString := cbb1.Text;
    tbl1.FieldByName('tanggal').AsDateTime := dtp1.Date;
    tbl1.FieldByName('ruang').AsString := edt5.Text;
    tbl1.FieldByName('matkul').AsString := edt2.Text;
    tbl1.FieldByName('kelas').AsString := edt1.Text;
    tbl1.FieldByName('kehadiran_total').AsString := edt6.Text;
    tbl1.Post;
    ShowMessage('Data Telah Diedit');
    bersih;
  end;
end;

procedure TForm10.btn3Click(Sender: TObject);
begin
if (edt3.Text = '') or (edt3.Text = '00:00') or (edt4.Text = '') or (edt4.Text = '00:00') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (cbb1.Text = '') or (cbb1.Text = '--Pilih Hari--') then
  begin
    ShowMessage('Data Belum Diisi Dengan Benar');
  end
  else if (edt5.Text = '') or (edt5.Text = '-') or (edt2.Text = '') or (edt2.Text = '-') then
  begin
    ShowMessage('Inputan Ruangan atau Matakuliah Belum Diisi');
  end
  else if (edt1.Text = '') or (edt1.Text = '-') or (edt6.Text = '') or (edt6.Text = '0') then
  begin
    ShowMessage('Inputan Kelas atau Total Hadir Masih Belum Selesai');
  end
  else if (edt3.Text= form8.qry1.Fields[1].AsString) and (cbb1.Text=form8.qry1.Fields[2].AsString) then
  begin
    ShowMessage('Data Tidak Ada Perubahan');
  end
  else
  begin
  if MessageDlg('Apakah Yakin Menghapus Data ini?',mtWarning,[mbYes,mbNo],0)=mryes then
  Begin
      tbl1.Delete;
      bersih;
  end else
  begin
      ShowMessage('Data Batal Di Hapus');
      tbl1.Post;
      bersih;
  end;
  end;
end;

procedure TForm10.btn4Click(Sender: TObject);
begin
  bersih;
end;

end.
