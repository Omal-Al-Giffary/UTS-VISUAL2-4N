program Project1;

uses
  Forms,
  main in 'main.pas' {Form1},
  latihan_kalkulator in 'latihan_kalkulator.pas' {Form2},
  praktek_mandiri1 in 'praktek_mandiri1.pas' {Form3},
  contoh_kondisional in 'contoh_kondisional.pas' {Form4},
  latihan02 in 'latihan02.pas' {Form5},
  stringgrid in 'stringgrid.pas' {Form6},
  stringgrid_revisi in 'stringgrid_revisi.pas' {Form7},
  datelat1 in 'datelat1.pas' {Form8},
  lap1 in 'lap1.pas' {Form9},
  tambahjad in 'tambahjad.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
