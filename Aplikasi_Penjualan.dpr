program Aplikasi_Penjualan;

uses
  Forms,
  U_Menu_Utama in 'U_Menu_Utama.pas' {F_MenuUtama},
  U_DataModule in 'U_DataModule.pas' {DataModule_TokoBB: TDataModule},
  U_Second_Menu in 'U_Second_Menu.pas' {F_Second_Menu},
  U_SettingHarga in 'U_SettingHarga.pas' {F_SettingHarga},
  U_DetailReport in 'U_DetailReport.pas' {F_Detail_Report};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_MenuUtama, F_MenuUtama);
  Application.CreateForm(TF_Second_Menu, F_Second_Menu);
  Application.CreateForm(TDataModule_TokoBB, DataModule_TokoBB);
  Application.CreateForm(TF_SettingHarga, F_SettingHarga);
  Application.CreateForm(TF_Detail_Report, F_Detail_Report);
  Application.Run;
end.
