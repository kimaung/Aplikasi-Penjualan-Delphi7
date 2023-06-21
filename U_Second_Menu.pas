unit U_Second_Menu;
interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls;
type
  TF_Second_Menu = class(TForm)
    PG_SecondMenu: TPageControl;
    TSS_REG: TTabSheet;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    ED_NM_REG: TEdit;
    ED_PASS_REG: TEdit;
    BTN_OK: TButton;
    BTN_CANCEL: TButton;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ED_NM_NEWREG: TEdit;
    ED_PASS_NEWREG: TEdit;
    CMB_LEVEL_NEWREG: TComboBox;
    B_SAVE: TButton;
    B_UBAH: TButton;
    B_HAPUS: TButton;
    B_TUTUP: TButton;
    DBG_REGISTER: TDBGrid;
    Label7: TLabel;
    LBL_ID: TLabel;
    TSS_JNS_BRG: TTabSheet;
    Label8: TLabel;
    Shape1: TShape;
    Label9: TLabel;
    DBG_Jenis_Barang: TDBGrid;
    ED_TAMBAH_JNSBRG: TEdit;
    BTN_SAVE_JNSBRG: TButton;
    BTN_EDIT_JNSBR: TButton;
    BTN_DEL_JNSBRG: TButton;
    BTN_TUTUP_JNSBRG: TButton;
    Shape2: TShape;
    GroupBox3: TGroupBox;
    ED_CARI_JNSBRG: TEdit;
    TSS_DETAIL_BRG: TTabSheet;
    Label10: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    LBL_KDBRG: TLabel;
    LBL_NMBRG: TLabel;
    LBL_JNSBRG: TLabel;
    LBL_BRAND: TLabel;
    ED_ISI: TEdit;
    CMB_STN: TComboBox;
    DTP_EXP: TDateTimePicker;
    BTN_SAVE_DTLBRG: TButton;
    BTN_EDIT_DTLBRG: TButton;
    BTN_TUTUP_DTLBRG: TButton;
    ED_VARIAN: TEdit;
    DBG_DTLBRG: TDBGrid;
    Label23: TLabel;
    Label24: TLabel;
    ED_CARIBRG: TEdit;
    TSS_DATABELI: TTabSheet;
    Label25: TLabel;
    Button1: TButton;
    Label26: TLabel;
    DBG_HISTORYBELI: TDBGrid;
    ED_CARIFAK: TEdit;
    TSS_STATUSBELI: TTabSheet;
    GroupBox4: TGroupBox;
    Label27: TLabel;
    BTN_KONF: TButton;
    CMB_KONF: TComboBox;
    RG_KONFIRMASI: TRadioGroup;
    BTN_KEMBALI: TButton;
    DBG_BELI: TDBGrid;
    Shape5: TShape;
    DBG_BELIDETAIL: TDBGrid;
    TSS_STOCKBRG: TTabSheet;
    DBG_STOCK: TDBGrid;
    BT_PILIHBRG: TButton;
    BT_BACKTOJUAL: TButton;
    Label28: TLabel;
    TSS_DATAJUAL: TTabSheet;
    DBG_DATAJUAL: TDBGrid;
    Label29: TLabel;
    E_CARIFAK: TEdit;
    B_BACK: TButton;
    Label30: TLabel;
    Button2: TButton;
    procedure Bersihkan;
    procedure TSS_REGShow(Sender: TObject);
    procedure BTN_OKClick(Sender: TObject);
    procedure B_SAVEClick(Sender: TObject);
    procedure BTN_CANCELClick(Sender: TObject);
    procedure B_UBAHClick(Sender: TObject);
    procedure ED_NM_NEWREGKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_REGISTERDblClick(Sender: TObject);
    procedure B_HAPUSClick(Sender: TObject);
    procedure B_TUTUPClick(Sender: TObject);
    procedure BTN_SAVE_JNSBRGClick(Sender: TObject);
    procedure BTN_EDIT_JNSBRClick(Sender: TObject);
    procedure BTN_DEL_JNSBRGClick(Sender: TObject);
    procedure BTN_TUTUP_JNSBRGClick(Sender: TObject);
    procedure DBG_Jenis_BarangDblClick(Sender: TObject);
    procedure ED_CARI_JNSBRGChange(Sender: TObject);
    procedure BTN_SAVE_DTLBRGClick(Sender: TObject);
    procedure BTN_EDIT_DTLBRGClick(Sender: TObject);
    procedure BTN_TUTUP_DTLBRGClick(Sender: TObject);
    procedure ED_CARIBRGChange(Sender: TObject);
    
    procedure ED_CARIFAKChange(Sender: TObject);
    procedure BT_PILIHBRGClick(Sender: TObject);
    procedure BT_BACKTOJUALClick(Sender: TObject);
    procedure BTN_KEMBALIClick(Sender: TObject);
    procedure BTN_KONFClick(Sender: TObject);
    procedure CMB_KONFChange(Sender: TObject);
    procedure E_CARIFAKChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure B_BACKClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Second_Menu: TF_Second_Menu;

implementation

uses U_DataModule, U_Menu_Utama;

{$R *.dfm}

procedure TF_Second_Menu.Bersihkan;
BEGIN
  LBL_ID.Caption :='';
  ED_NM_NEWREG.Text :='';
  ED_PASS_NEWREG.Text :='';
  CMB_LEVEL_NEWREG.Text :='';
END;


procedure TF_Second_Menu.TSS_REGShow(Sender: TObject);
Begin
  GroupBox2.Enabled :=False;
  ED_NM_REG.SetFocus;
End;


procedure TF_Second_Menu.BTN_OKClick(Sender: TObject);
Var
Nama,Sandi : String;
Begin
If ED_NM_REG.Text = '' Then
   MessageDlg('Silakan Masukan Username Anda !',mtWarning,[mbOK],0)
   Else
      If ED_PASS_REG.Text = '' Then
         MessageDlg('Silakan Masukan Password Anda !',mtWarning,[mbOK],0)
         Else
         Begin
            With DataModule_TokoBB.ZQ_Command_SQL DO
              Begin
                SQL.Clear;
                SQL.Add('SELECT * FROM tbl_admin WHERE nm_admin = "'+ED_NM_REG.Text+'"');
                Active:=True;
              End;
              Nama:=DataModule_TokoBB.ZQ_Command_SQL.FieldByName('nm_admin').AsString;
              Sandi:=DataModule_TokoBB.ZQ_Command_SQL.FieldByName('password').AsString;

              IF DataModule_TokoBB.ZQ_Command_SQL.RecordCount <=0  Then
                  MessageDlg('Username Tidak Terdaftar !',mtWarning,[mbOK],0)
                  Else
                  If ED_PASS_REG.Text <> Sandi Then
                      MessageDlg('Password Yang Anda Masukan Salah !',mtWarning,[mbOK],0)
                      Else
                      Begin
                        MessageDlg('Silakan Daftarkan Pengguna Baru !',mtInformation,[mbOK],0);
                        GroupBox2.Enabled:=True;
                        LBL_ID.Caption:='ADM-'+ IntToStr(DataModule_TokoBB.ZQ_Admin.RecordCount+1);
                        ED_NM_NEWREG.SetFocus;
                      End;
         End;
End;

procedure TF_Second_Menu.B_SAVEClick(Sender: TObject);
Begin
If ED_NM_NEWREG.Text= ''Then
  MessageDlg('Username Tidak Boleh Kosong ?',mtWarning,[mbOK],0)
  Else
       Begin
         With DataModule_TokoBB.ZQ_Command_SQL DO
              Begin
              SQL.Clear;
              SQL.Add('select * from tbl_admin');
              Active:=True;

              Append;
              FieldByName('kode_admin').AsString:=LBL_ID.Caption;
              FieldByName('nm_admin').AsString:=ED_NM_NEWREG.Text;
              FieldByName('password').AsString:=ED_PASS_NEWREG.Text;
              FieldByName('level').AsString:=CMB_LEVEL_NEWREG.Text;
              Post;

              MessageDlg('Registrasi Berhasil Disave',mtInformation,[mbOK],0);
              DataModule_TokoBB.ZQ_Admin.Refresh;
              Bersihkan;

              End;
      End;
End;

procedure TF_Second_Menu.BTN_CANCELClick(Sender: TObject);
begin
  ED_NM_REG.Text :='';
  ED_PASS_REG.Text :='';
  ED_NM_REG.SetFocus;
end;

procedure TF_Second_Menu.B_UBAHClick(Sender: TObject);
Var
KodeAdmin : String;
Begin
KodeAdmin := DataModule_TokoBB.ZQ_Admin.FieldByName('kode_admin').AsString;
  If (LBL_ID.Caption = '') OR (ED_NM_NEWREG.Text='') Then
      MessageDlg('Pilih Datanya Terlebih Dahulu !',mtWarning,[mbOK],0)
      Else
        Begin
            With DataModule_TokoBB.ZQ_Command_SQL Do
            Begin
              SQL.Clear;
              SQL.Add('SELECT * FROM tbl_admin WHERE kode_admin ="'+KodeAdmin+'"');
              Active:=True;

              Edit;
              FieldByName('kode_admin').AsString:=LBL_ID.Caption;
              FieldByName('nm_admin').AsString:=ED_NM_NEWREG.Text;
              FieldByName('password').AsString:=ED_PASS_NEWREG.Text;
              FieldByName('level').AsString:=CMB_LEVEL_NEWREG.Text;
              Post;
              MessageDlg('Data Pengguna Berhasil Diubah !',mtInformation,[mbOK],0);
              DataModule_TokoBB.ZQ_Admin.Refresh;
              Bersihkan;
            End;
        End;
End;

procedure TF_Second_Menu.ED_NM_NEWREGKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Key = chr(13) Then
     ED_PASS_NEWREG.SetFocus;

end;

procedure TF_Second_Menu.DBG_REGISTERDblClick(Sender: TObject);
Begin
With DataModule_TokoBB.ZQ_Admin DO
  Begin
     LBL_ID.Caption:=FieldByName('kode_admin').AsString;
     ED_NM_NEWREG.Text:=FieldByName('nm_admin').AsString;
     ED_PASS_NEWREG.Text:=FieldByName('password').AsString;
     CMB_LEVEL_NEWREG.Text:=FieldByName('level').AsString;
  End;
End;

procedure TF_Second_Menu.B_HAPUSClick(Sender: TObject);
Var
KodeAdmin : String;
Begin
KodeAdmin := DataModule_TokoBB.ZQ_Admin.FieldByName('kode_admin').AsString;
  If (LBL_ID.Caption = '') OR (ED_NM_NEWREG.Text='') Then
      MessageDlg('Pilih Data Yang Akan Dihapus !',mtWarning,[mbOK],0)
      Else
        Begin
            If MessageDlg('Anda Yakin Mau Menghapus ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
            Begin
              With DataModule_TokoBB.ZQ_Command_SQL Do
              Begin
                SQL.Clear;
                SQL.Add('SELECT * FROM tbl_admin WHERE kode_admin ="'+KodeAdmin+'"');
                Active:=True;

                Delete;
                MessageDlg('Data Pengguna Berhasil Dihapus !',mtInformation,[mbOK],0);
                DataModule_TokoBB.ZQ_Admin.Refresh;
                Bersihkan;
              End;
            End;
        End;
End;

procedure TF_Second_Menu.B_TUTUPClick(Sender: TObject);
begin
MessageDlg('Yakin Mau Keluar Menu Ini ?',mtInformation,[mbOK],0);
F_Second_Menu.Close;
Bersihkan;
end;

procedure TF_Second_Menu.BTN_SAVE_JNSBRGClick(Sender: TObject);
begin
   If ED_TAMBAH_JNSBRG.Text='' Then
 MessageDlg('Tentukan Nama Jenis Barangnya Dahulu!',mtWarning,[mbOK],0)
 Else
     With DataModule_TokoBB.ZQ_Command_SQL Do
     Begin
         SQL.Clear;
         SQL.Add('SELECT * FROM tbl_jns_barang');
         Active:=True;

         Append;
         FieldByName('jenis_barang').AsString:=ED_TAMBAH_JNSBRG.Text;

         Post;

         MessageDlg('Penambahan Jenis Barang Berhasil Disave',mtInformation,[mbOK],0);
         DataModule_TokoBB.ZQ_Jenis_Barang.Refresh;
         end;
end;

procedure TF_Second_Menu.BTN_EDIT_JNSBRClick(Sender: TObject);
Var
 Kode_JNSBRG:String;
begin
 Kode_JNSBRG:=DataModule_TokoBB.ZQ_Jenis_Barang.FieldByName('kode_jns_barang').AsString;
 If ED_TAMBAH_JNSBRG.Text='' Then
    MessageDlg('Klik Item Jenis Barang Yang Mau di Edit Pada DataGrid !',mtWarning,[mbOK],0)
 Else
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL Do
 Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_jns_barang WHERE kode_jns_barang ="'+Kode_JNSBRG+'"');
    Active:=True;
    Edit;
    FieldByName('kode_jns_barang').AsString;
    FieldByName('jenis_barang').AsString:=ED_TAMBAH_JNSBRG.Text;
    Post;
    MessageDlg('Data Jenis Barang Berhasil Diubah',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Jenis_Barang.Refresh;
  end;
 end;
end;

procedure TF_Second_Menu.BTN_DEL_JNSBRGClick(Sender: TObject);
Var
 Kode_JNSBRG:String;
 Begin
 Kode_JNSBRG:=DataModule_TokoBB.ZQ_Jenis_Barang.FieldByName('kode_jns_barang').AsString;
 If ED_TAMBAH_JNSBRG.Text='' Then
    MessageDlg('Klik Item Jenis Barang Yang Mau di Hapus Pada DataGrid !',mtWarning,[mbOK],0)
 Else
 Begin
    If MessageDlg('Yakin Mau Dihapus ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL Do
 Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_jns_barang WHERE kode_jns_barang ="'+Kode_JNSBRG+'"');
    Active:=True;

    Delete;
    MessageDlg('Data Berhasil Dihapus',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Jenis_Barang.Refresh;
 end;
 end;
end;
end;

procedure TF_Second_Menu.BTN_TUTUP_JNSBRGClick(Sender: TObject);
begin
  F_Second_Menu.Close;
end;

procedure TF_Second_Menu.DBG_Jenis_BarangDblClick(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Jenis_Barang Do
Begin
  ED_TAMBAH_JNSBRG.Text:=FieldByName('jenis_barang').AsString;

  end;
end;

procedure TF_Second_Menu.ED_CARI_JNSBRGChange(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Jenis_Barang Do
begin
  SQL.Text:='SELECT * FROM tbl_jns_barang WHERE jenis_barang like "%'+ED_CARI_JNSBRG.Text+'%"';
  Active:=True;

end;
end;

procedure TF_Second_Menu.BTN_SAVE_DTLBRGClick(Sender: TObject);
Begin
If LBL_KDBRG.Caption='..........' Then
 MessageDlg('Kode Barang Tidak Boleh Kosong !',mtWarning,[mbOK],0)
   Else
If ED_ISI.Text='' Then
 MessageDlg('Silakan Input Isi Kemasan Barang Tersebut !',mtWarning,[mbOK],0)
   Else
   If CMB_STN.Text='' Then
     MessageDlg('Kolom Satuan Juga Tidak Boleh Kosong !',mtWarning,[mbOK],0)
     Else
     If ED_VARIAN.Text='' Then
        MessageDlg('Kolom Jenis Variant Juga Tidak Boleh Kosong !',mtWarning,[mbOK],0)
     Else
     Begin
         With DataModule_TokoBB.ZQ_Command_SQL Do
         Begin
         SQL.Clear;
         SQL.Add('SELECT * FROM tbl_brg_detail');
         Active:=True;
         Append;
         FieldByName('kode_barang').AsString:=LBL_KDBRG.Caption;
         FieldByName('qty').AsString:=ED_ISI.Text;
         FieldByName('stn').AsString:=CMB_STN.Text;
         FieldByName('varian').AsString:=ED_VARIAN.Text;
         FieldByName('expired').AsDateTime:=DTP_EXP.Date;
         Post;
         MessageDlg('Data Detail Barang Berhasil Disave',mtInformation,[mbOK],0);
         DataModule_TokoBB.ZQ_Detail_Barang.Refresh;
         end;
     end;
end;

procedure TF_Second_Menu.BTN_EDIT_DTLBRGClick(Sender: TObject);
Var
 Kode_DTLBRG:String;
 begin
 Kode_DTLBRG:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('kode_brg_detail').AsString;
 If LBL_KDBRG.Caption='..........' Then
    MessageDlg('Kode Barang Tidak Bleh Kosong !',mtWarning,[mbOK],0)
 Else
 If Kode_DTLBRG='' Then
    MessageDlg('Silakan Pilih Data Detail Barang yang Akan Diubah !',mtWarning,[mbOK],0)
 Else
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL Do
  Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_brg_detail WHERE kode_brg_detail ="'+Kode_DTLBRG+'"');
    Active:=True;
    Edit;
    FieldByName('qty').AsString:=ED_ISI.Text;
    FieldByName('stn').AsString:=CMB_STN.Text;
    FieldByName('varian').AsString:=ED_VARIAN.Text;
    FieldByName('expired').AsDateTime:=DTP_EXP.Date;
    Post;
    MessageDlg('Detail Barang Berhasil Diubah',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Detail_Barang.Refresh;

  end;
 end;
end;

procedure TF_Second_Menu.BTN_TUTUP_DTLBRGClick(Sender: TObject);
begin
  F_Second_Menu.Close;
end;

procedure TF_Second_Menu.ED_CARIBRGChange(Sender: TObject);
Var
   KD_BRG:String;
begin
KD_BRG:=DataModule_TokoBB.ZQ_Barang.FieldByName('kode_barang').AsString;

With DataModule_TokoBB.ZQ_Detail_Barang Do
  Begin
    SQL.Text:='SELECT `tbl_brg_detail`.*, `tbl_barang`.*, `tbl_jns_barang`.*'
              +'FROM `db_tokouniba`.`tbl_barang` '
              +'INNER JOIN `db_tokouniba`.`tbl_brg_detail` '
              +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`)'
              +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
              +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`)'
              +'WHERE tbl_barang.kode_barang LIKE "%'+KD_BRG+'%"'
              +'AND tbl_brg_detail.varian LIKE "%'+ED_CARIBRG.Text+'%"';
    Active:=True;
  End;
end;

procedure TF_Second_Menu.ED_CARIFAKChange(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Detail_Pembelian Do
begin
  SQL.Text:='SELECT * FROM tbl_belidetail WHERE fak_beli like "%'+ED_CARIFAK.Text+'%"';
  Active:=True;

end;
end;

procedure TF_Second_Menu.BT_PILIHBRGClick(Sender: TObject);
Var
  KODE_STOCK:String;
  JUMLAH_STOCK:Integer;
Begin
KODE_STOCK:=DataModule_TokoBB.ZQ_STOCK.FieldByName('kode_stockbrg').AsString;
  With DataModule_TokoBB.ZQ_Command_SQL Do
      Begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_stockbrg WHERE kode_stockbrg ="'+KODE_STOCK+'"');
      Active:=True;
      End;
      JUMLAH_STOCK:=DataModule_TokoBB.ZQ_Command_SQL.FieldByName('jml_stockbrg').AsInteger;

      If JUMLAH_STOCK <= 0 Then
      MessageDlg('Stock Utk Barang Tersebut Tidak Ada Alias Kosong !',mtInformation,[mbOK],0)
Else
Begin

With DataModule_TokoBB.ZQ_Stock Do
  Begin
     F_MenuUtama.L_KDBRG.Caption:=FieldByName('kode_barang').AsString;
     F_MenuUtama.L_NMBRG.Caption:=FieldByName('nm_merk_barang').AsString;
     F_MenuUtama.L_JNSBRG.Caption:=FieldByName('jenis_barang').AsString;
     F_MenuUtama.L_BRAND.Caption:=FieldByName('nm_brand').AsString;
     F_MenuUtama.L_QTY.Caption:=FieldByName('qty').AsString;
     F_MenuUtama.L_STN.Caption:=FieldByName('stn').AsString;
     F_MenuUtama.L_VARIANT.Caption:=FieldByName('varian').AsString;
     F_MenuUtama.L_HRGJUAL.Caption:=FieldByName('harga_brg').AsString;
  End;
F_Second_Menu.Close;
End;
End;

procedure TF_Second_Menu.BT_BACKTOJUALClick(Sender: TObject);
begin
F_Second_Menu.Close;
end;

procedure TF_Second_Menu.BTN_KEMBALIClick(Sender: TObject);
begin
F_Second_Menu.Close;
end;

procedure TF_Second_Menu.BTN_KONFClick(Sender: TObject);
Var
KODE_STOCKBRG, KODE_BARANG, KODE_BRG_DETAIL, QTY, VARIAN : String;
JML_BRG : Integer;

begin
 CASE RG_KONFIRMASI.ItemIndex OF
  -1 :Begin
        MessageDlg('Silahkan Tentukan Konfirmasinya !',mtWarning,[mbOK],0)
       End;

   0 : Begin
        If CMB_KONF.Text = '' Then
            MessageDlg('Pilih No. Faktur Pembeliannya !',mtWarning,[mbOK],0)
            Else Begin
   DataModule_TokoBB.ZQ_Detail_Pembelian.First;
   WHILE NOT DataModule_TokoBB.ZQ_Detail_Pembelian.EoF Do
          Begin
            KODE_BRG_DETAIL :=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_brg_detail').AsString;
            KODE_BARANG     :=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_barang').AsString;
            QTY             :=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('qty').AsString;
            VARIAN          :=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('varian').AsString;

            KODE_STOCKBRG:=KODE_BRG_DETAIL+'-'+KODE_BARANG+'-'+QTY+'-'+VARIAN;

            If DataModule_TokoBB.ZQ_Stock.Locate('kode_stockbrg',KODE_STOCKBRG,[]) Then
                Begin
                  KODE_BRG_DETAIL:=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_belidetail').AsString;
                  With DataModule_TokoBB.ZQ_Command_SQL Do
                    Begin
                        SQL.Clear;
                        SQL.Add('SELECT * FROM  tbl_stockbrg WHERE kode_stockbrg="'+KODE_STOCKBRG+'"');
                        Active:=True;

                        JML_BRG:=StrtoInt(DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('jml_brg').AsString);

                        Edit;
                        FieldByName('jml_stockbrg').AsString:=IntToStr(StrToInt(FieldByName('jml_stockbrg').AsString)+JML_BRG);
                        Post;
                        DataModule_TokoBB.ZQ_Stock.Refresh;

                        SQL.Clear;
                        SQL.Add('SELECT * FROM tbl_belidetail WHERE kode_belidetail="'+KODE_BRG_DETAIL+'"');
                        Active:=True;
                        Edit;
                        FieldByName('status').AsString:='Konfirmasi';
                        Post;
                        DataModule_TokoBB.ZQ_Barang.Refresh;
                        DataModule_TokoBB.ZQ_Stock.Refresh;
                    End;
                  End Else
                      Begin
                      KODE_BRG_DETAIL:=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_belidetail').AsString;
                      With DataModule_TokoBB.ZQ_Command_SQL Do
                           Begin
                             SQL.Clear;
                             SQL.Add('SELECT * FROM tbl_stockbrg');
                             Active:=True;
                             Append;
                             FieldByName('kode_stockbrg').AsString:=KODE_STOCKBRG;
                             FieldByName('kode_brg_detail').AsString:=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_brg_detail').AsString;
                             FieldByName('harga_brg').AsString:='0';
                             FieldByName('jml_stockbrg').AsString:=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('jml_brg').AsString;
                             Post;
                             DataModule_TokoBB.ZQ_Barang.Refresh;
                             DataModule_TokoBB.ZQ_Stock.Refresh;

                             SQL.Clear;
                             SQL.Add('SELECT * FROM tbl_belidetail WHERE kode_belidetail="'+KODE_BRG_DETAIL+'"');
                             Active:=True;
                             Edit;
                             FieldByName('status').AsString:='Konfirmasi';
                             Post;
                           End;
                      End;
                      DataModule_TokoBB.ZQ_Detail_Pembelian.Next;
                      DataModule_TokoBB.ZQ_Detail_Pembelian.Refresh;
                      DataModule_TokoBB.ZQ_Barang.Refresh;
                      DataModule_TokoBB.ZQ_Stock.Refresh;
                    End;
                    MessageDlg('Stock Barang Berhasil Ditambahkan !',mtInformation,[mbOK],0);
                End;
              End;
           1 : Begin
               KODE_BRG_DETAIL :=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_brg_detail').AsString;
               KODE_BARANG     :=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_barang').AsString;
               QTY             :=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('qty').AsString;
               VARIAN          :=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('varian').AsString;

               KODE_STOCKBRG:=KODE_BRG_DETAIL+'-'+KODE_BARANG+'-'+QTY+'-'+VARIAN;

               If DataModule_TokoBB.ZQ_Stock.Locate('kode_stockbrg',KODE_STOCKBRG,[]) Then
                 Begin;
                   KODE_BRG_DETAIL:=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_belidetail').AsString;
                   With DataModule_TokoBB.ZQ_Command_SQL Do
                          Begin
                          SQL.Clear;
                          SQL.Add('SELECT * FROM tbl_stockbrg WHERE kode_stockbrg="'+KODE_STOCKBRG+'"');
                          Active:=True;

                          JML_BRG:=StrtoInt(DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('jml_brg').AsString);

                          Edit;
                          FieldByName('jml_stockbrg').AsString:=IntToStr(StrToInt(FieldByName('jml_stockbrg').AsString)+JML_BRG);
                          Post;

                          DataModule_TokoBB.ZQ_Stock.Refresh;

                          SQL.Clear;
                          SQL.Add('SELECT * FROM tbl_belidetail WHERE kode_belidetail="'+KODE_BRG_DETAIL+'"');
                          Active:=True;

                          Edit;
                          FieldByName('status').AsString:='Konfirmasi';
                          Post;
                   End;
                   End else
                   Begin
                      KODE_BRG_DETAIL:=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_belidetail').AsString;
                      With DataModule_TokoBB.ZQ_Command_SQL Do
                           Begin
                             SQL.Clear;
                             SQL.Add('SELECT * FROM tbl_stockbrg');
                             Active:=True;

                             Append;
                             FieldByName('kode_stockbrg').AsString:=KODE_STOCKBRG;
                             FieldByName('kode_brg_detail').AsString:=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('kode_brg_detail').AsString;
                             FieldByName('harga_brg').AsString:='0';
                             FieldByName('jml_stockbrg').AsString:=DataModule_TokoBB.ZQ_Detail_Pembelian.FieldByName('jml_brg').AsString;
                             Post;
                             DataModule_TokoBB.ZQ_Barang.Refresh;
                             DataModule_TokoBB.ZQ_Stock.Refresh;

                             SQL.Clear;
                             SQL.Add('SELECT * FROM tbl_belidetail WHERE kode_belidetail="'+KODE_BRG_DETAIL+'"');
                             Active:=True;
                             Edit;
                             FieldByName('status').AsString:='Konfirmasi';
                             Post;
                       End;
                 End;
                 DataModule_TokoBB.ZQ_Detail_Pembelian.Refresh;
                 DataModule_TokoBB.ZQ_Barang.Refresh;
                 DataModule_TokoBB.ZQ_Stock.Refresh;
                 MessageDlg('Stock Barang Berhasil Ditambahkan !',mtInformation,[mbOK],0);
               End;
          End;
         End;

procedure TF_Second_Menu.CMB_KONFChange(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Pembelian Do
  Begin
   SQL.Clear;
   SQL.Add('SELECT `tbl_beli`.*, `tbl_supplier`.* '
          +'FROM '
          +'`db_tokouniba`.`tbl_supplier` '
          +'INNER JOIN `db_tokouniba`.`tbl_beli` '
          +'ON (`tbl_supplier`.`kode_spl` = `tbl_beli`.`kode_spl`) '
          +'WHERE tbl_beli.fak_beli LIKE "%'+CMB_KONF.Text+'%"');
   Active:=True;
   End;
With DataModule_TokoBB.ZQ_Detail_Pembelian Do
      Begin
        SQL.Clear;
        SQL.Add('SELECT `tbl_belidetail`.*, `tbl_beli`.*, `tbl_brg_detail`.*, `tbl_barang`.*, `tbl_supplier`.* '
                +'FROM '
                +'`db_tokouniba`.`tbl_beli` '
                +'INNER JOIN `db_tokouniba`.`tbl_belidetail` '
                +'ON (`tbl_beli`.`fak_beli` = `tbl_belidetail`.`fak_beli`) '
                +'INNER JOIN `db_tokouniba`.`tbl_brg_detail` '
                +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_belidetail`.`kode_brg_detail`) '
                +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                +'INNER JOIN `db_tokouniba`.`tbl_supplier` '
                +'ON (`tbl_supplier`.`kode_spl` = `tbl_beli`.`kode_spl`) '

                +'WHERE tbl_belidetail.fak_beli LIKE "%'+CMB_KONF.Text+'%" '
                +'AND tbl_belidetail.status="Belum DiKonfirmasi"');
      Active:=True;
      End;
end;

procedure TF_Second_Menu.E_CARIFAKChange(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Detail_Penjualan Do
begin
  SQL.Text:='SELECT * FROM tbl_jualdetail WHERE fak_jual like "%'+E_CARIFAK.Text+'%"';
  Active:=True;

end;
end;

procedure TF_Second_Menu.Button1Click(Sender: TObject);
begin
F_Second_Menu.Close;
end;

procedure TF_Second_Menu.B_BACKClick(Sender: TObject);
begin
F_Second_Menu.Close;
end;

procedure TF_Second_Menu.Button2Click(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Detail_Barang Do
  Begin
     F_MenuUtama.LBL_KDBRG.Caption:=FieldByName('kode_barang').AsString;
     F_MenuUtama.LBL_NMBRG.Caption:=FieldByName('nm_merk_barang').AsString;
     F_MenuUtama.LBL_JNSBRG.Caption:=FieldByName('jenis_barang').AsString;
     F_MenuUtama.LBL_BRANDBRG.Caption:=FieldByName('nm_brand').AsString;
     F_MenuUtama.LBL_ISIBRG.Caption:=FieldByName('qty').AsString;
     F_MenuUtama.LBL_STNBRG.Caption:=FieldByName('stn').AsString;
     F_MenuUtama.LBL_VARBRG.Caption:=FieldByName('varian').AsString;

  End;
  F_Second_Menu.Close;
end;

end.
