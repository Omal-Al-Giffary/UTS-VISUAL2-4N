unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    mm1: TMainMenu;
    mniFILE1: TMenuItem;
    mniLATIHAN1: TMenuItem;
    mniDATABSE1: TMenuItem;
    mniLATIHAN11: TMenuItem;
    mniLATIHAN21: TMenuItem;
    mniKONDISIONAL11: TMenuItem;
    mniKONDISIONAL21: TMenuItem;
    mniGRAFIKSTRINGGRID1: TMenuItem;
    mniGRAFIKSTRINGGRID2: TMenuItem;
    mniLAT1: TMenuItem;
    KELUAR1: TMenuItem;
    img1: TImage;
    procedure mniLATIHAN11Click(Sender: TObject);
    procedure mniLATIHAN21Click(Sender: TObject);
    procedure mniKONDISIONAL11Click(Sender: TObject);
    procedure mniKONDISIONAL21Click(Sender: TObject);
    procedure mniGRAFIKSTRINGGRID1Click(Sender: TObject);
    procedure mniGRAFIKSTRINGGRID2Click(Sender: TObject);
    procedure mniLAT1Click(Sender: TObject);
    procedure KELUAR1Click(Sender: TObject);
    procedure mniDATABSE1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses latihan_kalkulator, praktek_mandiri1, contoh_kondisional, latihan02,
  stringgrid, stringgrid_revisi, datelat1;

{$R *.dfm}

procedure TForm1.mniLATIHAN11Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.mniLATIHAN21Click(Sender: TObject);
begin
Form3.Show;
end;

procedure TForm1.mniKONDISIONAL11Click(Sender: TObject);
begin
   Form4.Show;
end;

procedure TForm1.mniKONDISIONAL21Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.mniGRAFIKSTRINGGRID1Click(Sender: TObject);
begin
     Form6.Show;
end;

procedure TForm1.mniGRAFIKSTRINGGRID2Click(Sender: TObject);
begin
     Form7.Show;
end;

procedure TForm1.mniLAT1Click(Sender: TObject);
begin
Form8.Show;
end;

procedure TForm1.KELUAR1Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.mniDATABSE1Click(Sender: TObject);
begin
Form8.ShowModal;
end;

end.
