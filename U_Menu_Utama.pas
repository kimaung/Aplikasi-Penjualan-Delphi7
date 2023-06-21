unit U_Menu_Utama;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls, frxpngimage, Grids, DBGrids,
  DBCtrls, XPMan;

type
  TF_MenuUtama = class(TForm)
    PG_Atas: TPageControl;
    PG_Tengah: TPageControl;
    SB_1: TStatusBar;
    TS_LOGIN: TTabSheet;
    TS_MENU: TTabSheet;
    TS_HOME: TTabSheet;
    TS_BARANG: TTabSheet;
    TS_CUST: TTabSheet;
    TS_SPL: TTabSheet;
    TS_BELI: TTabSheet;
    TS_JUAL: TTabSheet;
    TS_STOCK: TTabSheet;
    TS_LAP: TTabSheet;
    IMG_HOME: TImage;
    Label1: TLabel;
    Label2: TLabel;
    ED_NMADM: TEdit;
    ED_PASS: TEdit;
    IMG_MASUK: TImage;
    Label3: TLabel;
    Label4: TLabel;
    IMG_DAFTAR: TImage;
    Label5: TLabel;
    IMG_BARANG: TImage;
    IMG_CUST: TImage;
    Label6: TLabel;
    IMG_SPL: TImage;
    Label7: TLabel;
    IMG_BELI: TImage;
    Label8: TLabel;
    IMG_JUAL: TImage;
    Label9: TLabel;
    IMG_STOCK: TImage;
    Label10: TLabel;
    Label11: TLabel;
    IMG_REPORT: TImage;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    ED_NMBARANG: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    ED_BRAND: TEdit;
    Shape1: TShape;
    Shape2: TShape;
    IMG_ADDJNSBRG: TImage;
    BTN_INBRG: TButton;
    BTN_SAVEBRG: TButton;
    BTN_EDITBRG: TButton;
    BTN_CANCELBRG: TButton;
    BTN_CLOSEBRG: TButton;
    Label20: TLabel;
    DBG_BARANG: TDBGrid;
    BTN_ADDLIST: TButton;
    DBG_LISTBARANG: TDBGrid;
    GroupBox1: TGroupBox;
    ED_CARIBRG: TEdit;
    BTN_UBAHDTL: TButton;
    BTN_HAPUSDTL: TButton;
    DBL_JNSBRG: TDBLookupComboBox;
    BTN_DELBRG: TButton;
    GroupBox2: TGroupBox;
    ED_CARI_CUST: TEdit;
    BTN_DELETE_CUST: TButton;
    BTN_CANCEL_CUST: TButton;
    BTN_EDIT_CUST: TButton;
    BTN_SAVE_CUST: TButton;
    BTN_INPUT_CUST: TButton;
    DBG_CUST: TDBGrid;
    ED_TELP_CUST: TEdit;
    MM_ALMT_CUST: TMemo;
    ED_NM_CUST: TEdit;
    ED_KODE_CUST: TEdit;
    Shape3: TShape;
    Shape4: TShape;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    BTN_CLSCUST: TButton;
    ED_KD_SPL: TEdit;
    ED_NM_SPL: TEdit;
    MM_ALMT_SPL: TMemo;
    ED_TELP_SPL: TEdit;
    DBG_SPL: TDBGrid;
    BTN_INPUT_SPL: TButton;
    BTN_SAVE_SPL: TButton;
    BTN_EDIT_SPL: TButton;
    BTN_CANCEL_SPL: TButton;
    BTN_DEL_SPL: TButton;
    GroupBox3: TGroupBox;
    ED_CARI_SPL: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    BTN_CLSSPL: TButton;
    BTN_VIEW_DATABELI: TButton;
    BTN_SAVE_BELI: TButton;
    BTN_DELALL_BELI: TButton;
    BTN_DELITEM_BELI: TButton;
    DBG_LISTBELI: TDBGrid;
    GroupBox6: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    LBL_KDBRG: TLabel;
    LBL_NMBRG: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    LBL_JNSBRG: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    LBL_BRANDBRG: TLabel;
    Label42: TLabel;
    Label45: TLabel;
    LBL_ISIBRG: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    LBL_STNBRG: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    LBL_VARBRG: TLabel;
    GroupBox7: TGroupBox;
    Label48: TLabel;
    Label51: TLabel;
    ED_HRG_BELIBRG: TEdit;
    ED_JML_BELIBRG: TEdit;
    BTN_ADDLISTBELI: TButton;
    GroupBox8: TGroupBox;
    Label52: TLabel;
    ED_CARI_DFTRBRG: TEdit;
    DBL_BARANG: TDBLookupListBox;
    GroupBox4: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    LBL_KDSPL: TLabel;
    LBL_NMSPL: TLabel;
    LBL_ALMTSPL: TLabel;
    LBL_TLPSPL: TLabel;
    GroupBox5: TGroupBox;
    Label56: TLabel;
    ED_CARISPL: TEdit;
    DBL_SUPPLIER: TDBLookupListBox;
    DTP_BELI: TDateTimePicker;
    ED_FAKBELI: TEdit;
    Shape9: TShape;
    Label57: TLabel;
    Shape8: TShape;
    Label58: TLabel;
    Shape7: TShape;
    Label59: TLabel;
    Label60: TLabel;
    BTN_ADDFAKBELI: TButton;
    BTN_TUTUP: TButton;
    BTN_BATAL: TButton;
    BTN_SETHRG: TButton;
    BTN_FKONFIRMASI: TButton;
    LB_JMLSTOCK: TLabel;
    LB_HRGJUAL: TLabel;
    Label120: TLabel;
    Label119: TLabel;
    Label118: TLabel;
    Label117: TLabel;
    LB_VARIANT: TLabel;
    Label115: TLabel;
    LB_STN: TLabel;
    Label113: TLabel;
    LB_QTY: TLabel;
    Label111: TLabel;
    LB_BRAND: TLabel;
    Label109: TLabel;
    LB_JNSBRG: TLabel;
    Label107: TLabel;
    LB_NMBRG: TLabel;
    Label105: TLabel;
    LB_KDBRG: TLabel;
    Label103: TLabel;
    Label102: TLabel;
    Label101: TLabel;
    Label100: TLabel;
    Label99: TLabel;
    Label98: TLabel;
    Label97: TLabel;
    Label96: TLabel;
    Label95: TLabel;
    Shape10: TShape;
    Shape11: TShape;
    DBG_STOCK: TDBGrid;
    BTNADD: TButton;
    DT_JUAL: TDateTimePicker;
    GroupBox12: TGroupBox;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    LB_KDCUST: TLabel;
    LB_NMCUST: TLabel;
    LB_ALMTCUST: TLabel;
    LB_TELPCUST: TLabel;
    GroupBox13: TGroupBox;
    Label90: TLabel;
    ED_CARICUST: TEdit;
    TDBL_NMCUST: TDBLookupListBox;
    GroupBox9: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    L_KDBRG: TLabel;
    L_NMBRG: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    L_JNSBRG: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    L_BRAND: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    L_QTY: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    L_STN: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    L_VARIANT: TLabel;
    GroupBox10: TGroupBox;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    L_HRGJUAL: TLabel;
    IMG_CETAK: TImage;
    Label87: TLabel;
    ED_JMLJUAL: TEdit;
    BT_ADDJUAL: TButton;
    GroupBox11: TGroupBox;
    Label86: TLabel;
    ED_CARIBRGJUAL: TEdit;
    TDBL_NMBRGJUAL: TDBLookupListBox;
    DBG_LISTJUAL: TDBGrid;
    BT_DELJUAL: TButton;
    BT_DELALLJUAL: TButton;
    BT_SAVEJUAL: TButton;
    BT_VIEWJUAL: TButton;
    Label94: TLabel;
    Label93: TLabel;
    Shape12: TShape;
    Label92: TLabel;
    Shape13: TShape;
    Label91: TLabel;
    Shape14: TShape;
    ED_FAKJUAL: TEdit;
    BTN_CLOSEJUAL: TButton;
    BTN_CANCELJUAL: TButton;
    XPManifest1: TXPManifest;
    B_CLOSE: TButton;
    IMG_KELUAR: TImage;
    Label12: TLabel;
    GroupBox14: TGroupBox;
    IM_BRG: TImage;
    Label88: TLabel;
    IM_STOCK: TImage;
    Label89: TLabel;
    IM_SPL: TImage;
    Label104: TLabel;
    IM_CUST: TImage;
    Label106: TLabel;
    IM_PEMB: TImage;
    Label108: TLabel;
    IM_PENJ: TImage;
    Label110: TLabel;
    Label112: TLabel;

    procedure FormShow(Sender: TObject);
    procedure IMG_MASUKClick(Sender: TObject);
    procedure IMG_DAFTARClick(Sender: TObject);
    procedure TS_BARANGShow(Sender: TObject);
    procedure IMG_ADDJNSBRGClick(Sender: TObject);
    procedure BTN_SAVEBRGClick(Sender: TObject);
    procedure BTN_EDITBRGClick(Sender: TObject);
    procedure BTN_DELBRGClick(Sender: TObject);
    procedure DBG_BARANGDblClick(Sender: TObject);
    procedure BTN_ADDLISTClick(Sender: TObject);
    procedure BTN_INBRGClick(Sender: TObject);
    procedure BTN_CANCELBRGClick(Sender: TObject);
    procedure BTN_CLOSEBRGClick(Sender: TObject);
    procedure BTN_UBAHDTLClick(Sender: TObject);
    procedure BTN_HAPUSDTLClick(Sender: TObject);
    procedure ED_CARIBRGChange(Sender: TObject);
    procedure BTN_INPUT_CUSTClick(Sender: TObject);
    procedure TS_CUSTShow(Sender: TObject);
    procedure BTN_SAVE_CUSTClick(Sender: TObject);
    procedure BTN_EDIT_CUSTClick(Sender: TObject);
    procedure BTN_CANCEL_CUSTClick(Sender: TObject);
    procedure BTN_DELETE_CUSTClick(Sender: TObject);
    procedure BTN_CLSCUSTClick(Sender: TObject);
    procedure DBG_CUSTDblClick(Sender: TObject);
    procedure ED_CARI_CUSTChange(Sender: TObject);
    procedure ED_KODE_CUSTKeyPress(Sender: TObject; var Key: Char);
    procedure ED_NM_CUSTKeyPress(Sender: TObject; var Key: Char);
    procedure MM_ALMT_CUSTKeyPress(Sender: TObject; var Key: Char);
    procedure ED_TELP_CUSTKeyPress(Sender: TObject; var Key: Char);
    procedure TS_SPLShow(Sender: TObject);
    procedure ED_KD_SPLKeyPress(Sender: TObject; var Key: Char);
    procedure BTN_INPUT_SPLClick(Sender: TObject);
    procedure BTN_SAVE_SPLClick(Sender: TObject);
    procedure DBG_SPLDblClick(Sender: TObject);
    procedure BTN_CANCEL_SPLClick(Sender: TObject);
    procedure ED_CARI_SPLChange(Sender: TObject);
    procedure BTN_CLSSPLClick(Sender: TObject);
    procedure BTN_EDIT_SPLClick(Sender: TObject);
    procedure BTN_DEL_SPLClick(Sender: TObject);
    procedure ED_NM_SPLKeyPress(Sender: TObject; var Key: Char);
    procedure MM_ALMT_SPLKeyPress(Sender: TObject; var Key: Char);
    procedure ED_TELP_SPLKeyPress(Sender: TObject; var Key: Char);
    procedure IMG_BARANGClick(Sender: TObject);
    procedure IMG_CUSTClick(Sender: TObject);
    procedure IMG_SPLClick(Sender: TObject);
    procedure IMG_BELIClick(Sender: TObject);
    procedure IMG_JUALClick(Sender: TObject);
    procedure IMG_STOCKClick(Sender: TObject);
    procedure IMG_REPORTClick(Sender: TObject);
    procedure BTN_ADDFAKBELIClick(Sender: TObject);
    procedure DBL_BARANGDblClick(Sender: TObject);
    procedure BTN_TUTUPClick(Sender: TObject);
    procedure BTN_BATALClick(Sender: TObject);
    procedure TS_BELIShow(Sender: TObject);
    procedure DBL_SUPPLIERDblClick(Sender: TObject);
    procedure ED_CARISPLChange(Sender: TObject);
    procedure ED_CARI_DFTRBRGChange(Sender: TObject);
    procedure ED_HRG_BELIBRGChange(Sender: TObject);
    procedure BTN_ADDLISTBELIClick(Sender: TObject);
    procedure ED_JML_BELIBRGKeyPress(Sender: TObject; var Key: Char);
    procedure BTN_DELALL_BELIClick(Sender: TObject);
    procedure BTN_DELITEM_BELIClick(Sender: TObject);
    procedure BTN_SAVE_BELIClick(Sender: TObject);
    procedure BTN_VIEW_DATABELIClick(Sender: TObject);
    procedure BTN_SETHRGClick(Sender: TObject);
    procedure BTNADDClick(Sender: TObject);
    procedure BTN_CANCELJUALClick(Sender: TObject);
    procedure BTN_CLOSEJUALClick(Sender: TObject);
    procedure TDBL_NMCUSTDblClick(Sender: TObject);
    procedure TS_JUALShow(Sender: TObject);
    procedure ED_CARICUSTChange(Sender: TObject);
    procedure DBG_STOCKCellClick(Column: TColumn);
    procedure BT_PILIHBRGClick(Sender: TObject);
    procedure TDBL_NMBRGJUALDblClick(Sender: TObject);
    procedure BT_ADDJUALClick(Sender: TObject);
    procedure ED_JMLJUALKeyPress(Sender: TObject; var Key: Char);
    procedure BT_DELJUALClick(Sender: TObject);
    procedure BT_DELALLJUALClick(Sender: TObject);
    procedure BT_SAVEJUALClick(Sender: TObject);
    procedure BTN_FKONFIRMASIClick(Sender: TObject);
    procedure BT_VIEWJUALClick(Sender: TObject);
    procedure ED_CARIBRGJUALChange(Sender: TObject);
    procedure IMG_KELUARClick(Sender: TObject);
    procedure IMG_CETAKClick(Sender: TObject);
    procedure IM_BRGClick(Sender: TObject);
    procedure IM_PEMBClick(Sender: TObject);
    procedure IM_STOCKClick(Sender: TObject);
    procedure IM_PENJClick(Sender: TObject);
    procedure IM_SPLClick(Sender: TObject);
    procedure IM_CUSTClick(Sender: TObject);

  private
    { Private declarations }
    KesalahanCount: Integer;
  public
    Procedure BuatTitikKoma(edit:Tedit);
    Function HapusTitikKoma(edit:Tedit):String;
  end;

var
  F_MenuUtama: TF_MenuUtama;

implementation

uses U_DataModule, U_Second_Menu, U_SettingHarga, U_DetailReport;

{$R *.dfm}
Function TF_MenuUtama.HapusTitikKoma(edit:Tedit): String;
Var
  Hasil_Hapus : String;
  Begin
    Hasil_Hapus := edit.Text;
    Hasil_Hapus :=StringReplace(Hasil_Hapus, ',', '',[rfReplaceAll, rfIgnorecase]);
    Hasil_Hapus :=StringReplace(Hasil_Hapus, ',', '',[rfReplaceAll, rfIgnorecase]);
    HapusTitikKoma :=Hasil_Hapus;
  end;

Procedure TF_MenuUtama.BuatTitikKoma(edit:Tedit);
var
   sRupiah: String;
   iRupiah: Currency;
   begin
      sRupiah := edit.Text;
      sRupiah := StringReplace(sRupiah, ',', '',[rfReplaceAll, rfIgnoreCase]);
      sRupiah := StringReplace (sRupiah, ',', '', [rfReplaceAll, rfIgnoreCase]);
      iRupiah :=StrToCurrDef (sRupiah, 0);

      edit.Text :=FormatCurr('#,###', iRupiah);
      edit.SelStart := length(edit.Text);
   end;


procedure TF_MenuUtama.FormShow(Sender: TObject);
Begin
  TS_MENU.TabVisible:=False;
  TS_HOME.TabVisible:=False;
  TS_BARANG.TabVisible:=False;
  TS_CUST.TabVisible:=False;
  TS_SPL.TabVisible:=False;
  TS_BELI.TabVisible:=False;
  TS_JUAL.TabVisible:=False;
  TS_STOCK.TabVisible:=False;
  TS_LAP.TabVisible:=False;

  PG_Atas.ActivePage:=TS_LOGIN;
  PG_Tengah.ActivePage:=TS_HOME;
  ED_NMADM.SetFocus;
End;

procedure TF_MenuUtama.IMG_MASUKClick(Sender: TObject);
Var
  Nama,Sandi : String;

Begin
If ED_NMADM.Text = '' Then
  MessageDlg('Silakan Masukan Username Dahulu !',mtWarning,[mbOK],0)
  Else
    If ED_PASS.Text ='' Then
       MessageDlg('Silakan Masukan Password Dahulu !',mtWarning,[mbOK],0)
  Else
    Begin
     With DataModule_TokoBB.ZQ_Command_SQL Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT * FROM tbl_admin WHERE nm_admin = "'+ED_NMADM.Text+'"');
            Active:=True;
          End;
     Nama:=DataModule_TokoBB.ZQ_Command_SQL.FieldByName('nm_admin').AsString;
     Sandi:=DataModule_TokoBB.ZQ_Command_SQL.FieldByName('password').AsString;

     IF DataModule_TOkoBB.ZQ_Command_SQL.RecordCount <=0 Then
        Begin
          MessageDlg('Username tidak ditemukan!', mtWarning, [mbOK], 0);
          Exit;
        End;
      If ED_PASS.Text <> Sandi then
        Begin
            Inc(KesalahanCount); // Tambahkan jumlah kesalahan
            If KesalahanCount >= 3 then
        Begin
            MessageDlg('Anda telah salah memasukkan password sebanyak 3 kali berturut-turut. Aplikasi akan keluar.', mtWarning, [mbOK], 0);
            Application.Terminate; // Keluar dari aplikasi
          End
        Else
          Begin
            MessageDlg('Password salah. Kesalahan ' + IntToStr(KesalahanCount) + ' dari 3.', mtWarning, [mbOK], 0);
        End;
      End

      ELSE
        Begin
          F_MenuUtama.TS_MENU.TabVisible:=True;
          F_MenuUtama.TS_HOME.TabVisible:=True;
          F_MenuUtama.TS_BARANG.TabVisible:=False;
          F_MenuUtama.TS_CUST.TabVisible:=False;
          F_MenuUtama.TS_SPL.TabVisible:=False;
          F_MenuUtama.TS_BELI.TabVisible:=False;
          F_MenuUtama.TS_JUAL.TabVisible:=False;
          F_MenuUtama.TS_STOCK.TabVisible:=False;
          F_MenuUtama.TS_LAP.TabVisible:=False;
          PG_Atas.ActivePage:=TS_MENU;
          PG_Tengah.ActivePage:=TS_HOME;
          KesalahanCount := 0;
          MessageDlg('Anda Berhasil Login !',mtInformation,[mbOK],0);
          ED_NMADM.Text:='';
          ED_PASS.Text:='';
        End;
         if DataModule_TOkoBB.ZQ_Command_SQL.FieldByName('level').AsString='user' then
                begin
                  F_MenuUtama.Show;
                  F_MenuUtama.BTN_FKONFIRMASI.enabled:=false;
                  F_MenuUtama.BTN_SETHRG.enabled:=false;
                  F_MenuUtama.IMG_BARANG.enabled:=false;
                  F_MenuUtama.IMG_SPL.enabled:=false;
                  F_MenuUtama.IMG_BELI.Enabled:=false;
                  ED_NMADM.Text:='';
                  ED_PASS.Text:='';
                end
            else
                begin
                  F_MenuUtama.Show;
                  F_MenuUtama.IMG_JUAL.enabled:=false;
                  ED_NMADM.Text:='';
                  ED_PASS.Text:='';
              End
    End;
End;

procedure TF_MenuUtama.IMG_DAFTARClick(Sender: TObject);
Begin
 F_Second_Menu.Show;
 F_Second_Menu.PG_SecondMenu.ActivePage := F_Second_Menu.TSS_REG;
 F_Second_Menu.TSS_JNS_BRG.TabVisible := False;
 F_Second_Menu.TSS_DETAIL_BRG.TabVisible := False;
 F_Second_Menu.TSS_DATABELI.TabVisible := False;
End;

procedure TF_MenuUtama.TS_BARANGShow(Sender: TObject);
begin
  ED_NMBARANG.Enabled := False;
  DBL_JNSBRG.Enabled := False;
  ED_BRAND.Enabled := False;
  BTN_SAVEBRG.Enabled := False;
  BTN_EDITBRG.Enabled := False;
  BTN_CANCELBRG.Enabled := False;
  BTN_DELBRG.Enabled := False;
  BTN_ADDLIST.Enabled := False;
  BTN_UBAHDTL.Enabled := False;
  BTN_HAPUSDTL.Enabled := False;
  BTN_INBRG.SetFocus;

end;

procedure TF_MenuUtama.IMG_ADDJNSBRGClick(Sender: TObject);
begin
  F_Second_Menu.Show;
  F_Second_Menu.PG_SecondMenu.ActivePage:=F_Second_Menu.TSS_JNS_BRG;
  F_Second_Menu.TSS_REG.TabVisible := False;
  F_Second_Menu.TSS_DETAIL_BRG.TabVisible := False;
  F_Second_Menu.TSS_DATABELI.TabVisible := False;
  F_Second_Menu.Refresh;
end;

procedure TF_MenuUtama.BTN_SAVEBRGClick(Sender: TObject);
Var
  KD_BARANG:String;
begin
KD_BARANG:='BRG-'+FormatDateTime('hhmmss',Now);
If ED_NMBARANG.Text='' Then
 MessageDlg('Nama Barang Tdk Boleh Kosong !',mtWarning,[mbOK],0)
   Else
     Begin
         With DataModule_TokoBB.ZQ_Command_SQL Do
         Begin
         SQL.Clear;
         SQL.Add('SELECT * FROM tbl_barang');
         Active:=True;

         Append;
         FieldByName('kode_barang').AsString:=KD_BARANG;
         FieldByName('nm_merk_barang').AsString:=ED_NMBARANG.Text;
         FieldByName('kode_jns_barang').AsString:=DBL_JNSBRG.KeyValue;
         FieldByName('nm_brand').AsString:=ED_BRAND.Text;
         Post;

         MessageDlg('Data Barang Berhasil Di Simpan',mtInformation,[mbOK],0);
         DataModule_TokoBB.ZQ_Barang.Refresh;
         DataModule_TokoBB.ZQ_Jenis_Barang.Refresh;
         end;
     end;
end;

procedure TF_MenuUtama.BTN_EDITBRGClick(Sender: TObject);
Var
 KODE_BRG:String;
 begin
 KODE_BRG:=DataModule_TokoBB.ZQ_Barang.FieldByName('kode_barang').AsString;
 If ED_NMBARANG.Text='' Then
    MessageDlg('Masukan Datanya Terlebih Dahulu !',mtWarning,[mbOK],0)
 Else
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Add('select * from tbl_barang WHERE kode_barang ="'+KODE_BRG+'"');
    Active:=True;

    Edit;
    FieldByName('kode_barang').AsString;
    FieldByName('nm_merk_barang').AsString:=ED_NMBARANG.Text;
    FieldByName('kode_jns_barang').AsString:=DBL_JNSBRG.KeyValue;
    FieldByName('nm_brand').AsString:=ED_BRAND.Text;
    Post;

    MessageDlg('Data Barang Berhasil Diubah',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Barang.Refresh;
    DataModule_TokoBB.ZQ_Jenis_Barang.Refresh;
 end;
 end;
end;
procedure TF_MenuUtama.BTN_DELBRGClick(Sender: TObject);
Var
 KODE_BARANG:String;
 begin
 KODE_BARANG:=DataModule_TokoBB.ZQ_Barang.FieldByName('kode_barang').AsString;
 If (ED_NMBARANG.Text='') Or (DBL_JNSBRG.KeyValue='') Then
      MessageDlg('Masukan Datanya Terlebih Dahulu Yang Akan Dihapus !',mtWarning,[mbOK],0)
 Else
    Begin
      If MessageDlg('Yakin Mau Dihapus ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
      Begin
      With DataModule_TokoBB.ZQ_Command_SQL Do
      Begin
        SQL.Clear;
        SQL.Add('SELECT * FROM tbl_barang WHERE kode_barang ="'+KODE_BARANG+'"');
         Active:=True;

         Delete;
         MessageDlg('Data Barang Berhasil Dihapus',mtInformation,[mbOK],0);
         DataModule_TokoBB.ZQ_Barang.Refresh;
         DataModule_TokoBB.ZQ_Jenis_Barang.Refresh;
      end;
   end;
 end;
end;

procedure TF_MenuUtama.DBG_BARANGDblClick(Sender: TObject);
Begin
  ED_NMBARANG.Text:=DataModule_TokoBB.ZQ_Barang.FieldByName('nm_merk_barang').AsString;
  DBL_JNSBRG.KeyValue:=DataModule_TokoBB.ZQ_Barang.FieldByName('kode_jns_barang').AsString;
  ED_BRAND.Text:=DataModule_TokoBB.ZQ_Barang.FieldByName('nm_brand').AsString;

  With DataModule_TokoBB.ZQ_Detail_Barang Do
  Begin
    SQL.Text:='SELECT `tbl_brg_detail`.*, `tbl_barang`.*, `tbl_jns_barang`.* '
              +'FROM `db_tokouniba`.`tbl_barang` '
              +'INNER JOIN `db_tokouniba`.`tbl_brg_detail` '
              +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`)'
              +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
              +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`)'
              +'WHERE tbl_brg_detail.kode_barang Like "'+DataModule_TokoBB.ZQ_Barang.FieldByName('kode_barang').AsString+'"';
    Active:=True;
    DataModule_TokoBB.ZQ_Barang.Refresh;
  End;
end;

procedure TF_MenuUtama.BTN_ADDLISTClick(Sender: TObject);
Var
 Kode_BRG:String;
Begin
Kode_BRG:=DataModule_TokoBB.ZQ_Barang.FieldByName('kode_barang').AsString;

If (ED_NMBARANG.Text='') OR (Kode_BRG='')Then
    MessageDlg('Masukan Datanya Terlebih Dahulu Utk Tambah Detail Barang!',mtWarning,[mbOK],0)
    Else
    Begin
      F_Second_Menu.Show;
      F_Second_Menu.LBL_KDBRG.Caption:=Kode_BRG;
      F_Second_Menu.LBL_NMBRG.Caption:=ED_NMBARANG.Text;
      F_Second_Menu.LBL_JNSBRG.Caption:=DBL_JNSBRG.Text;
      F_Second_Menu.LBL_BRAND.Caption:=ED_BRAND.Text;

      F_Second_Menu.PG_SecondMenu.ActivePage:=F_Second_Menu.TSS_DETAIL_BRG;
      F_Second_Menu.TSS_REG.TabVisible := False;
      F_Second_Menu.TSS_JNS_BRG.TabVisible := False;
      F_Second_Menu.TSS_DATABELI.TabVisible := False;
      F_Second_Menu.TSS_STATUSBELI.TabVisible := False;
      F_Second_Menu.TSS_STOCKBRG.TabVisible := False;
      end;
end;

procedure TF_MenuUtama.BTN_INBRGClick(Sender: TObject);
begin
  ED_NMBARANG.Enabled := True;
  DBL_JNSBRG.Enabled := True;
  ED_BRAND.Enabled := True;
  BTN_SAVEBRG.Enabled := True;
  BTN_EDITBRG.Enabled := True;
  BTN_CANCELBRG.Enabled := True;
  BTN_DELBRG.Enabled := True;
  BTN_ADDLIST.Enabled := True;
  BTN_UBAHDTL.Enabled := True;
  BTN_HAPUSDTL.Enabled := True;

  ED_NMBARANG.Text :='';
  ED_BRAND.Text :='';
  ED_NMBARANG.SetFocus;
end;

procedure TF_MenuUtama.BTN_CANCELBRGClick(Sender: TObject);
begin
 ED_NMBARANG.Text :='';
 ED_BRAND.Text := '';
end;

procedure TF_MenuUtama.BTN_CLOSEBRGClick(Sender: TObject);
begin
 MessageDlg('Yakin Mau Keluar Form Barang Ini ?',mtInformation,[mbOK],0);
 PG_Tengah.ActivePage:=TS_HOME;
 F_MenuUtama.TS_BARANG.TabVisible:=False;
 F_MenuUtama.TS_CUST.TabVisible:=False;
 F_MenuUtama.TS_SPL.TabVisible:=False;
 F_MenuUtama.TS_BELI.TabVisible:=False;
 F_MenuUtama.TS_JUAL.TabVisible:=False;
 F_MenuUtama.TS_STOCK.TabVisible:=False;
 F_MenuUtama.TS_LAP.TabVisible:=False;
end;

procedure TF_MenuUtama.BTN_UBAHDTLClick(Sender: TObject);
Var
 KD_DTLBRG:String;
 begin
 KD_DTLBRG:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('kode_brg_detail').AsString;
 If (ED_NMBARANG.Text='') OR (KD_DTLBRG='') Then
 MessageDlg('Silakan Pilih Datanya Terlebih Dahulu!',mtWarning,[mbOK],0)
 Else
 Begin
     F_Second_Menu.Show;
     F_Second_Menu.LBL_KDBRG.Caption:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('kode_barang').AsString;
     F_Second_Menu.LBL_NMBRG.Caption:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('nm_merk_barang').AsString;
     F_Second_Menu.LBL_JNSBRG.Caption:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('kode_jns_barang').AsString;
     F_Second_Menu.LBL_BRAND.Caption:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('nm_brand').AsString;
     F_Second_Menu.ED_ISI.Text:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('qty').AsString;
     F_Second_Menu.CMB_STN.Text:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('stn').AsString;
     F_Second_Menu.ED_VARIAN.Text:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('varian').AsString;
     F_Second_Menu.DTP_EXP.Date:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('expired').AsDateTime;
     F_Second_Menu.PG_SecondMenu.ActivePage:=F_Second_Menu.TSS_DETAIL_BRG;
 end;
end;

procedure TF_MenuUtama.BTN_HAPUSDTLClick(Sender: TObject);
Var
 KD_DTLBRG:String;
 begin
    KD_DTLBRG:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('kode_brg_detail').AsString;
    If KD_DTLBRG='' Then
    MessageDlg('Pilih Klik Datanya Terlebih Dahulu!',mtWarning,[mbOK],0)
 Else
 Begin
    If MessageDlg('Yakin Mau Dihapus Detail Barang Ini ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
 Begin
    With DataModule_TokoBB.ZQ_Command_SQL DO
    Begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_brg_detail WHERE kode_brg_detail ="'+KD_DTLBRG+'"');
      Active:=True;
      Delete;
      MessageDlg('Data Detail Barang Barang Berhasil Dihapus',mtInformation,[mbOK],0);
      DataModule_TokoBB.ZQ_Detail_Barang.Refresh;
    end;
 end;
 end;
 end;

procedure TF_MenuUtama.ED_CARIBRGChange(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Barang Do
begin
  SQL.Text:='SELECT `tbl_barang`.* ,`tbl_jns_barang`.* '
            +'FROM `db_tokouniba`.`tbl_jns_barang` '
            +'INNER JOIN `db_tokouniba`.`tbl_barang` '
            +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`)'
            +'Where tbl_barang.nm_merk_barang like "%'+ED_CARIBRG.Text+'%"';
  Active:=True;

end;
end;

procedure TF_MenuUtama.BTN_INPUT_CUSTClick(Sender: TObject);
begin
  ED_KODE_CUST.Enabled := True;
  ED_NM_CUST.Enabled := True;
  MM_ALMT_CUST.Enabled := True;
  ED_TELP_CUST.Enabled := True;
  ED_CARI_CUST.Enabled := True;

  BTN_SAVE_CUST.Enabled := True;
  BTN_EDIT_CUST.Enabled := True;
  BTN_CANCEL_CUST.Enabled := True;
  BTN_DELETE_CUST.Enabled := True;
  DBG_CUST.Enabled := True;
  BTN_CLSCUST.Enabled := True;

  ED_KODE_CUST.Text :='';
  ED_NM_CUST.Text :='';
  MM_ALMT_CUST.Text := '';
  ED_TELP_CUST.Text :='';
  ED_CARI_CUST.Text :='';

  BTN_INPUT_CUST.Enabled := False;
  ED_KODE_CUST.SetFocus;
end;

procedure TF_MenuUtama.TS_CUSTShow(Sender: TObject);
begin
  ED_KODE_CUST.Enabled := False;
  ED_NM_CUST.Enabled := False;
  MM_ALMT_CUST.Enabled := False;
  ED_TELP_CUST.Enabled := False;
  ED_CARI_CUST.Enabled := False;

  BTN_INPUT_CUST.Enabled := True;
  BTN_SAVE_CUST.Enabled := False;
  BTN_EDIT_CUST.Enabled := False;
  BTN_CANCEL_CUST.Enabled := False;
  BTN_DELETE_CUST.Enabled := False;
  DBG_CUST.Enabled:= False;
  BTN_CLSCUST.Enabled := True;


  ED_KODE_CUST.Text :='';
  ED_NM_CUST.Text :='';
  MM_ALMT_CUST.Text := '';
  ED_TELP_CUST.Text :='';
  ED_CARI_CUST.Text :='';

  BTN_INPUT_CUST.SetFocus;
end;

procedure TF_MenuUtama.BTN_SAVE_CUSTClick(Sender: TObject);
begin
If ED_KODE_CUST.Text='' Then
   MessageDlg('Kode Customer Tdk Boleh Kosong !',mtWarning,[mbOK],0)
 Else
     If ED_NM_CUST.Text='' Then
        MessageDlg('Nama Customer Tdk Boleh Kosong !',mtWarning,[mbOK],0)
     Else
        If MM_ALMT_CUST.Text='' Then
           MessageDlg('Alamat Customer Tdk Boleh Kosong !',mtWarning,[mbOK],0)
     Else
        If ED_TELP_CUST.Text='' Then
           MessageDlg('No. Tlp Customer Tdk Boleh Kosong !',mtWarning,[mbOK],0)
     Else
     Begin
         With DataModule_TokoBB.ZQ_Customer Do
         Begin
         SQL.Clear;
         SQL.Add('SELECT * FROM tbl_customer');
         Active:=True;
         Append;
         FieldByName('kode_cust').AsString:=ED_KODE_CUST.Text;
         FieldByName('nm_cust').AsString:=ED_NM_CUST.Text;
         FieldByName('almt_cust').AsString:=MM_ALMT_CUST.Text;
         FieldByName('telp_cust').AsString:=ED_TELP_CUST.Text;
         Post;
         MessageDlg('Data Customer Berhasil Disave',mtInformation,[mbOK],0);
         DataModule_TokoBB.ZQ_Customer.Refresh;
         DBG_CUST.Refresh;
         BTN_INPUT_CUST.Enabled := True;
         ED_KODE_CUST.Text :='';
         ED_NM_CUST.Text :='';
         MM_ALMT_CUST.Text :='';
         ED_TELP_CUST.Text :='';
         end;
     end;
end;

procedure TF_MenuUtama.BTN_EDIT_CUSTClick(Sender: TObject);
Var
 KD_CUSTOMER:String;
 begin
 KD_CUSTOMER:=DataModule_TokoBB.ZQ_Customer.FieldByName('kode_cust').AsString;
 If (ED_KODE_CUST.Text='') Or (ED_NM_CUST.Text='') Then
     MessageDlg('Double Click Datanya Pada Data Grid Disamping !',mtWarning,[mbOK],0)
 Else
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_customer WHERE kode_cust ="'+KD_CUSTOMER+'"');
    Active:=True;

    Edit;
    FieldByName('kode_cust').AsString:=ED_KODE_CUST.Text;
    FieldByName('nm_cust').AsString:=ED_NM_CUST.Text;
    FieldByName('almt_cust').AsString:=MM_ALMT_CUST.Text;
    FieldByName('telp_cust').AsString:=ED_TELP_CUST.Text;
    Post;

    MessageDlg('Data Customer Berhasil Diubah',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Customer.Refresh;
    DBG_CUST.Refresh;
    BTN_INPUT_CUST.Enabled := True;
    ED_KODE_CUST.Text :='';
    ED_NM_CUST.Text :='';
    MM_ALMT_CUST.Text :='';
    ED_TELP_CUST.Text :='';
 end;
 end;
end;

procedure TF_MenuUtama.BTN_CANCEL_CUSTClick(Sender: TObject);
begin
  ED_KODE_CUST.Text :='';
  ED_NM_CUST.Text :='';
  MM_ALMT_CUST.Text :='';
  ED_TELP_CUST.Text :='';
end;

procedure TF_MenuUtama.BTN_DELETE_CUSTClick(Sender: TObject);
Var
 KD_CUSTOMER:String;
 begin
 KD_CUSTOMER:=DataModule_TokoBB.ZQ_Customer.FieldByName('kode_cust').AsString;
 If (ED_KODE_CUST.Text='') Or (ED_NM_CUST.Text='') Then
    MessageDlg('Double Click Datanya Pada Data Grid Disamping Yang Akan Dihapus !',mtWarning,[mbOK],0)
 Else
 Begin
 If MessageDlg('Yakin Mau Dihapus ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_customer WHERE kode_cust ="'+KD_CUSTOMER+'"');
    Active:=True;

    Delete;
    MessageDlg('Data Customer Berhasil Dihapus',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Customer.Refresh;
    BTN_INPUT_CUST.Enabled := True;
    ED_KODE_CUST.Text :='';
    ED_NM_CUST.Text :='';
    MM_ALMT_CUST.Text :='';
    ED_TELP_CUST.Text :='';

 end;
 end;
 end;
end;

procedure TF_MenuUtama.BTN_CLSCUSTClick(Sender: TObject);
begin
 MessageDlg('Yakin Mau Keluar Form Customer ?',mtInformation,[mbOK],0);
 PG_Tengah.ActivePage:=TS_HOME;
 F_MenuUtama.TS_BARANG.TabVisible:=False;
 F_MenuUtama.TS_CUST.TabVisible:=False;
 F_MenuUtama.TS_SPL.TabVisible:=False;
 F_MenuUtama.TS_BELI.TabVisible:=False;
 F_MenuUtama.TS_JUAL.TabVisible:=False;
 F_MenuUtama.TS_STOCK.TabVisible:=False;
 F_MenuUtama.TS_LAP.TabVisible:=False;
end;

procedure TF_MenuUtama.DBG_CUSTDblClick(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Customer Do
  Begin
    ED_KODE_CUST.Text:=FieldByName('kode_cust').AsString;
    ED_NM_CUST.Text:=FieldByName('nm_cust').AsString;
    MM_ALMT_CUST.Text:=FieldByName('almt_cust').AsString;
    ED_TELP_CUST.Text:=FieldByName('telp_cust').AsString;
    ED_KODE_CUST.Enabled := False;
    BTN_SAVE_CUST.Enabled :=False;
  end;
end;

procedure TF_MenuUtama.ED_CARI_CUSTChange(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Customer Do
  begin
    SQL.Text:='SELECT * FROM tbl_customer WHERE nm_cust like "%'+ED_CARI_CUST.Text+'%"';
    Active:=True;

  end;
end;

procedure TF_MenuUtama.ED_KODE_CUSTKeyPress(Sender: TObject;
var Key: Char);
 Begin
 If Key = chr(13) Then
    Begin
    With DataModule_TokoBB.ZQ_Customer Do
      Begin
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_customer WHERE kode_cust ="'+ED_KODE_CUST.Text+'"';
      Active:=True;

      If DataModule_TokoBB.ZQ_Customer.RecordCount >0 Then
         Begin
            MessageDlg('Kode Customer Sudah Ada !',mtWarning,[mbOK],0);
            ED_KODE_CUST.SetFocus;
         End;
            If DataModule_TokoBB.ZQ_Customer.RecordCount = 0 Then
               ED_NM_CUST.SetFocus;

      End;
    End;
  end;

procedure TF_MenuUtama.ED_NM_CUSTKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = chr(13) Then
     MM_ALMT_CUST.SetFocus;
end;



procedure TF_MenuUtama.MM_ALMT_CUSTKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = chr(13) Then
     ED_TELP_CUST.SetFocus;
end;


procedure TF_MenuUtama.ED_TELP_CUSTKeyPress(Sender: TObject; var Key: Char);
begin
If Key = chr(13) Then
     BTN_SAVE_CUST.SetFocus;
end;

procedure TF_MenuUtama.TS_SPLShow(Sender: TObject);
begin
  ED_KD_SPL.Enabled := False;
  ED_NM_SPL.Enabled := False;
  MM_ALMT_SPL.Enabled := False;
  ED_TELP_SPL.Enabled := False;
  ED_CARI_SPL.Enabled := False;

  BTN_INPUT_SPL.Enabled := True;
  BTN_SAVE_SPL.Enabled := False;
  BTN_EDIT_SPL.Enabled := False;
  BTN_CANCEL_SPL.Enabled := False;
  BTN_DEL_SPL.Enabled := False;
  DBG_SPL.Enabled:= False;
  BTN_CLSSPL.Enabled := True;


  ED_KD_SPL.Text :='';
  ED_NM_SPL.Text :='';
  MM_ALMT_SPL.Text := '';
  ED_TELP_SPL.Text :='';
  ED_CARI_SPL.Text :='';

  BTN_INPUT_SPL.SetFocus;
end;

procedure TF_MenuUtama.ED_KD_SPLKeyPress(Sender: TObject; var Key: Char);
 Begin
 If Key = chr(13) Then
    Begin
    With DataModule_TokoBB.ZQ_Supplier Do
      Begin
      SQL.Clear;
      SQL.Text :='SELECT * FROM tbl_supplier WHERE kode_spl ="'+ED_KD_SPL.Text+'"';
      Active:=True;

      If DataModule_TokoBB.ZQ_Supplier.RecordCount >0 Then
         Begin
            MessageDlg('Kode Supplier Sudah Ada !',mtWarning,[mbOK],0);
            ED_KD_SPL.SetFocus;
         End;
            If DataModule_TokoBB.ZQ_Supplier.RecordCount = 0 Then
               ED_NM_SPL.SetFocus;

      End;
    End;
  end;

procedure TF_MenuUtama.BTN_INPUT_SPLClick(Sender: TObject);
Begin
  ED_KD_SPL.Enabled := True;
  ED_NM_SPL.Enabled := True;
  MM_ALMT_SPL.Enabled := True;
  ED_TELP_SPL.Enabled := True;
  ED_CARI_SPL.Enabled := True;

  BTN_SAVE_SPL.Enabled := True;
  BTN_EDIT_SPL.Enabled := True;
  BTN_CANCEL_SPL.Enabled := True;
  BTN_DEL_SPL.Enabled := True;
  DBG_SPL.Enabled := True;
  BTN_CLSSPL.Enabled := True;

  ED_KD_SPL.Text :='';
  ED_NM_SPL.Text :='';
  MM_ALMT_SPL.Text := '';
  ED_TELP_SPL.Text :='';
  ED_CARI_SPL.Text :='';

  BTN_INPUT_SPL.Enabled := False;
  ED_KD_SPL.SetFocus;
end;

procedure TF_MenuUtama.BTN_SAVE_SPLClick(Sender: TObject);
begin
If ED_KD_SPL.Text='' Then
   MessageDlg('Kode Supplier Tdk Boleh Kosong !',mtWarning,[mbOK],0)
 Else
     If ED_NM_SPL.Text='' Then
        MessageDlg('Nama Supplier Tdk Boleh Kosong !',mtWarning,[mbOK],0)
     Else
        If MM_ALMT_SPL.Text='' Then
           MessageDlg('Alamat Supplier Tdk Boleh Kosong !',mtWarning,[mbOK],0)
     Else
        If ED_TELP_SPL.Text='' Then
           MessageDlg('No. Tlp Supplier Tdk Boleh Kosong !',mtWarning,[mbOK],0)
     Else
     Begin
         With DataModule_TokoBB.ZQ_Supplier Do
         Begin
         SQL.Clear;
         SQL.Add('SELECT * FROM tbl_supplier');
         Active:=True;
         Append;
         FieldByName('kode_spl').AsString:=ED_KD_SPL.Text;
         FieldByName('nm_spl').AsString:=ED_NM_SPL.Text;
         FieldByName('almt_spl').AsString:=MM_ALMT_SPL.Text;
         FieldByName('telp_spl').AsString:=ED_TELP_SPL.Text;
         Post;
         MessageDlg('Data Supplier Berhasil Di Simpan',mtInformation,[mbOK],0);
         DataModule_TokoBB.ZQ_Supplier.Refresh;
         DBG_SPL.Refresh;
         BTN_INPUT_SPL.Enabled := True;
         ED_KODE_CUST.Text :='';
         ED_NM_SPL.Text :='';
         MM_ALMT_SPL.Text :='';
         ED_TELP_SPL.Text :='';
         end;
     end;
end;

procedure TF_MenuUtama.DBG_SPLDblClick(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Supplier Do
  Begin
    ED_KD_SPL.Text:=FieldByName('kode_spl').AsString;
    ED_NM_SPL.Text:=FieldByName('nm_spl').AsString;
    MM_ALMT_SPL.Text:=FieldByName('almt_spl').AsString;
    ED_TELP_SPL.Text:=FieldByName('telp_spl').AsString;
    ED_KD_SPL.Enabled := False;
    BTN_SAVE_SPL.Enabled :=False;
  end;
end;

procedure TF_MenuUtama.BTN_CANCEL_SPLClick(Sender: TObject);
begin
  ED_KD_SPL.Text :='';
  ED_NM_SPL.Text :='';
  MM_ALMT_SPL.Text :='';
  ED_TELP_SPL.Text :='';
end;

procedure TF_MenuUtama.ED_CARI_SPLChange(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Supplier Do
  begin
    SQL.Text:='SELECT * FROM tbl_supplier WHERE nm_spl like "%'+ED_CARI_SPL.Text+'%"';
    Active:=True;

  end;
end;
procedure TF_MenuUtama.BTN_CLSSPLClick(Sender: TObject);
begin
 MessageDlg('Yakin Mau Keluar Form Supplier ?',mtInformation,[mbOK],0);
 PG_Tengah.ActivePage:=TS_HOME;
 F_MenuUtama.TS_BARANG.TabVisible:=False;
 F_MenuUtama.TS_CUST.TabVisible:=False;
 F_MenuUtama.TS_SPL.TabVisible:=False;
 F_MenuUtama.TS_BELI.TabVisible:=False;
 F_MenuUtama.TS_JUAL.TabVisible:=False;
 F_MenuUtama.TS_STOCK.TabVisible:=False;
 F_MenuUtama.TS_LAP.TabVisible:=False;


end;

procedure TF_MenuUtama.BTN_EDIT_SPLClick(Sender: TObject);
Var
 KD_SUPPLIER:String;
 begin
 KD_SUPPLIER:=DataModule_TokoBB.ZQ_Supplier.FieldByName('kode_spl').AsString;
 If (ED_KD_SPL.Text='') Or (ED_NM_SPL.Text='') Then
     MessageDlg('Double Click Datanya Pada Data Grid Disamping !',mtWarning,[mbOK],0)
 Else
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_supplier WHERE kode_spl ="'+KD_SUPPLIER+'"');
    Active:=True;

    Edit;
    FieldByName('kode_spl').AsString:=ED_KD_SPL.Text;
    FieldByName('nm_spl').AsString:=ED_NM_SPL.Text;
    FieldByName('almt_spl').AsString:=MM_ALMT_SPL.Text;
    FieldByName('telp_spl').AsString:=ED_TELP_SPL.Text;
    Post;

    MessageDlg('Data Supplier Berhasil Diubah',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Supplier.Refresh;
    DBG_SPL.Refresh;
    BTN_INPUT_SPL.Enabled := True;
    ED_KD_SPL.Text :='';
    ED_NM_SPL.Text :='';
    MM_ALMT_SPL.Text :='';
    ED_TELP_SPL.Text :='';
 end;
 end;
end;

procedure TF_MenuUtama.BTN_DEL_SPLClick(Sender: TObject);
Var
 KD_SUPPLIER:String;
 begin
 KD_SUPPLIER:=DataModule_TokoBB.ZQ_Supplier.FieldByName('kode_spl').AsString;
 If (ED_KD_SPL.Text='') Or (ED_NM_SPL.Text='') Then
    MessageDlg('Double Click Datanya Pada Data Grid Disamping Yang Akan Dihapus !',mtWarning,[mbOK],0)
 Else
 Begin
 If MessageDlg('Yakin Mau Dihapus ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_supplier WHERE kode_spl ="'+KD_SUPPLIER+'"');
    Active:=True;

    Delete;
    MessageDlg('Data Supplier Berhasil Dihapus',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Supplier.Refresh;
    BTN_INPUT_SPL.Enabled := True;
    ED_KD_SPL.Text :='';
    ED_NM_SPL.Text :='';
    MM_ALMT_SPL.Text :='';
    ED_TELP_SPL.Text :='';

 end;
 end;
 end;
end;

procedure TF_MenuUtama.ED_NM_SPLKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = chr(13) Then
     MM_ALMT_SPL.SetFocus;
end;

procedure TF_MenuUtama.MM_ALMT_SPLKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = chr(13) Then
     ED_TELP_SPL.SetFocus;
end;

procedure TF_MenuUtama.ED_TELP_SPLKeyPress(Sender: TObject; var Key: Char);
begin
If Key = chr(13) Then
     BTN_SAVE_SPL.SetFocus;
end;

procedure TF_MenuUtama.IMG_BARANGClick(Sender: TObject);
begin
PG_Tengah.ActivePage:=TS_BARANG;
end;

procedure TF_MenuUtama.IMG_CUSTClick(Sender: TObject);
begin
PG_Tengah.ActivePage:=TS_CUST;
end;

procedure TF_MenuUtama.IMG_SPLClick(Sender: TObject);
begin
PG_Tengah.ActivePage:=TS_SPL;
end;

procedure TF_MenuUtama.IMG_BELIClick(Sender: TObject);
begin
PG_Tengah.ActivePage:=TS_BELI;
end;

procedure TF_MenuUtama.IMG_JUALClick(Sender: TObject);
begin
PG_Tengah.ActivePage:=TS_JUAL;
end;

procedure TF_MenuUtama.IMG_STOCKClick(Sender: TObject);
begin
PG_Tengah.ActivePage:=TS_STOCK;
end;

procedure TF_MenuUtama.IMG_REPORTClick(Sender: TObject);
begin
PG_Tengah.ActivePage:=TS_LAP;
end;

procedure TF_MenuUtama.BTN_ADDFAKBELIClick(Sender: TObject);
begin
  ED_FAKBELI.Text:='FAK-BL-'+FOrmatDateTime('hhmmss',Now);
  DTP_BELI.Enabled := True;
  ED_FAKBELI.Enabled := False;
  BTN_ADDFAKBELI.Enabled := False;
  BTN_BATAL.Enabled := True;
end;

procedure TF_MenuUtama.DBL_BARANGDblClick(Sender: TObject);
Var
   KD_BRG:String;
begin
F_Second_Menu.Show;
KD_BRG:=DataModule_TokoBB.ZQ_Barang.FieldByName('kode_barang').AsString;

With DataModule_TokoBB.ZQ_Detail_Barang Do
  Begin
    SQL.Text:='SELECT `tbl_brg_detail`.*, `tbl_barang`.*, `tbl_jns_barang`.*'
              +'FROM `db_tokouniba`.`tbl_barang` '
              +'INNER JOIN `db_tokouniba`.`tbl_brg_detail` '
              +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`)'
              +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
              +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`)'
              +'WHERE tbl_barang.kode_barang LIKE "%'+KD_BRG+'%"';
    Active:=True;
  End;
  BTN_ADDLISTBELI.Enabled :=True;
  F_Second_Menu.PG_SecondMenu.ActivePage:=F_Second_Menu.TSS_DETAIL_BRG;
  F_Second_Menu.BTN_SAVE_DTLBRG.Enabled := False;
  F_Second_Menu.BTN_EDIT_DTLBRG.Enabled := False;
  F_Second_Menu.BTN_TUTUP_DTLBRG.Enabled := True;
  F_Second_Menu.ED_ISI.Enabled := False;
  F_Second_Menu.CMB_STN.Enabled := False;
  F_Second_Menu.ED_VARIAN.Enabled := False;
  F_Second_Menu.DTP_EXP.Enabled := False;
  F_Second_Menu.ED_CARIBRG.SetFocus;

end;

procedure TF_MenuUtama.BTN_TUTUPClick(Sender: TObject);
begin
 MessageDlg('Yakin Mau Keluar Form Transaksi Pembelian Ini ?',mtInformation,[mbOK],0);
 PG_Tengah.ActivePage:=TS_HOME;
 F_MenuUtama.TS_BARANG.TabVisible:=False;
 F_MenuUtama.TS_CUST.TabVisible:=False;
 F_MenuUtama.TS_SPL.TabVisible:=False;
 F_MenuUtama.TS_BELI.TabVisible:=False;
 F_MenuUtama.TS_JUAL.TabVisible:=False;
 F_MenuUtama.TS_STOCK.TabVisible:=False;
 F_MenuUtama.TS_LAP.TabVisible:=False;


end;

procedure TF_MenuUtama.BTN_BATALClick(Sender: TObject);
begin
  ED_FAKBELI.Text :='';
  DTP_BELI.Enabled := False;
  BTN_ADDFAKBELI.Enabled := True;
  BTN_BATAL.Enabled := False;
end;

procedure TF_MenuUtama.TS_BELIShow(Sender: TObject);
begin
  ED_FAKBELI.Text := '';
  LBL_KDSPL.Caption := '';
  LBL_NMSPL.Caption := '';
  LBL_ALMTSPL.Caption := '';
  LBL_TLPSPL.Caption := '';

  LBL_KDBRG.Caption := '';
  LBL_NMBRG.Caption := '';
  LBL_JNSBRG.Caption := '';
  LBL_BRANDBRG.Caption := '';
  LBL_ISIBRG.Caption := '';
  LBL_STNBRG.Caption := '';
  LBL_VARBRG.Caption := '';

  ED_HRG_BELIBRG.Text :='';
  ED_JML_BELIBRG.Text :='';

  BTN_ADDFAKBELI.Enabled := True;
  BTN_BATAL.Enabled := False;
  BTN_ADDLISTBELI.Enabled := False;
  BTN_SAVE_BELI.Enabled := False;
  BTN_DELITEM_BELI.Enabled := True;
  BTN_DELALL_BELI.Enabled := True;
Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Text:='TRUNCATE TABLE tbl_tmps_pembelian';
    ExecSQL;
    DataModule_TokoBB.ZQ_Tmps_Pembelian.Refresh;
 end;
end;
end;

procedure TF_MenuUtama.DBL_SUPPLIERDblClick(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Supplier Do
  Begin
   LBL_KDSPL.Caption:=FieldByName('kode_spl').AsString;
   LBL_NMSPL.Caption:=FieldByName('nm_spl').AsString;
   LBL_ALMTSPL.Caption:=FieldByName('almt_spl').AsString;
   LBL_TLPSPL.Caption:=FieldByName('telp_spl').AsString;
  end;
end;

procedure TF_MenuUtama.ED_CARISPLChange(Sender: TObject);
begin
   With DataModule_TokoBB.ZQ_Supplier Do
Begin
  SQL.Text:='SELECT * FROM tbl_supplier WHERE nm_spl LIKE "%'+ED_CARISPL.Text+'%"';
  Active:=True
End;
end;

procedure TF_MenuUtama.ED_CARI_DFTRBRGChange(Sender: TObject);
begin
   With DataModule_TokoBB.ZQ_Barang Do
Begin
  SQL.Text:='SELECT * FROM tbl_barang WHERE nm_merk_barang LIKE "%'+ED_CARI_DFTRBRG.Text+'%"';
  Active:=True
End;
end;

procedure TF_MenuUtama.ED_HRG_BELIBRGChange(Sender: TObject);
begin
  BuatTitikKoma(ED_HRG_BELIBRG);
end;

procedure TF_MenuUtama.BTN_ADDLISTBELIClick(Sender: TObject);
Var
  TTL_HRG, TAMBAH_BRGSAMA, TTL_TAMBAH_BRGSAMA,JML_PEMBELIAN : Integer;
  KD_DTL : String;
Begin
  KD_DTL:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('kode_brg_detail').AsString;

If KD_DTL='' Then
  MessageDlg('Silakan Pilih Barang Yang Mau DIbeli !',mtWarning, [mbOK],0)
Else
If ED_HRG_BELIBRG.Text='' Then
  MessageDlg('Masukan Dulu Harga Beli Barangnya !',mtWarning, [mbOK],0)
Else
If ED_JML_BELIBRG.Text='' Then
  MessageDlg('Masukan Jumlah Pembeliannya !',mtWarning, [mbOK],0)
Else
If DataModule_TokoBB.ZQ_Tmps_Pembelian.Locate('kode_brg_detail',KD_DTL,[]) Then
Begin
With DataModule_TokoBB.ZQ_Command_SQL Do
    Begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_tmps_pembelian WHERE kode_brg_detail = "'+KD_DTL+'"');
      Active:=True;
    End;

    JML_PEMBELIAN:=StrtoInt(DataModule_TokoBB.ZQ_Command_SQL.FieldByName('jumlah').AsString);
    TTL_HRG:=StrtoInt(DataModule_TokoBB.ZQ_Command_SQL.FieldByName('total_harga').AsString);

    TAMBAH_BRGSAMA:=JML_PEMBELIAN+StrtoInt(ED_JML_BELIBRG.Text);
    TTL_TAMBAH_BRGSAMA:=StrtoInt(HapusTitikKoma(ED_HRG_BELIBRG))*TAMBAH_BRGSAMA;

With DataModule_TokoBB.ZQ_Command_SQL Do
    Begin
       SQL.Clear;
       SQL.Add('SELECT * FROM tbl_tmps_pembelian WHERE kode_brg_detail= "'+KD_DTL+'"');
       Active:=True;

       Edit;
       FieldByName('jumlah').AsString:=IntToStr(TAMBAH_BRGSAMA);
       FieldByName('total_harga').AsString:=IntToStr(TTL_TAMBAH_BRGSAMA);
       Post;

       MessageDlg('Jumlah Pembelian Barang Yang Sama Berhasil Ditambah Ke Daftar Pembelian !',mtInformation, [mbOK],0);
       DataModule_TokoBB.ZQ_Tmps_Pembelian.Refresh;
    End;
End Else
Begin
TTL_HRG :=StrtoInt(HapusTitikKoma(ED_HRG_BELIBRG))*StrtoInt(ED_JML_BELIBRG.Text);
With DataModule_TokoBB.ZQ_Command_SQL Do
  Begin
     SQL.Clear;
     SQL.Add('SELECT * FROM tbl_tmps_pembelian');
     Active:=True;

     Append;
     FieldByName('kode_brg_detail').AsString:=DataModule_TokoBB.ZQ_Detail_Barang.FieldByName('kode_brg_detail').AsString;
     FieldByName('harga_beli').AsString:=HapusTitikKoma(ED_HRG_BELIBRG);
     FieldByName('jumlah').AsString:=ED_JML_BELIBRG.Text;
     FieldByName('total_harga').AsString:=InttoStr(TTL_HRG);
     Post;

     MessageDlg('Data Barang Telah Ditambahkan Ke List Pembelian !',mtInformation,[mbOK],0);
     DataModule_TokoBB.ZQ_Tmps_Pembelian.Refresh;
     ED_HRG_BELIBRG.Text :='';
     ED_JML_BELIBRG.Text :='';

  end;
 End;
end;

procedure TF_MenuUtama.ED_JML_BELIBRGKeyPress(Sender: TObject;var Key: Char);
begin
 If Key = chr(13) Then
 BTN_ADDLISTBELI.SetFocus;

 BTN_SAVE_BELI.Enabled := True;
 BTN_DELITEM_BELI.Enabled :=True;
 BTN_DELALL_BELI.Enabled := True;
end;


procedure TF_MenuUtama.BTN_DELALL_BELIClick(Sender: TObject);
Var
 ListKosong: Integer;
 Begin
 ListKosong:=DataModule_TokoBB.ZQ_Tmps_Pembelian.RecordCount;
 If ListKosong=0 Then
 MessageDlg('Tidak Ada Item Barang Pada List Pembelian !',mtWarning,[mbOK],0)
 Else
 Begin
 If MessageDlg('Anda Yakin Mau Menghapus SEMUA ITEM Pada List ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Text:='TRUNCATE TABLE tbl_tmps_pembelian';
    ExecSQL;

    MessageDlg('Semua Item Barang Berhasil Dihapus Dari List Pembelian',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Tmps_Pembelian.Refresh;
 end;
 end;
end;
end;

procedure TF_MenuUtama.BTN_DELITEM_BELIClick(Sender: TObject);
Var
 KD_DTL:String;
 List_Kosong: Integer;

 begin
 KD_DTL:=DataModule_TokoBB.ZQ_Tmps_Pembelian.FieldByName('kode_brg_detail').AsString;
 List_Kosong:=DataModule_TokoBB.ZQ_Tmps_Pembelian.RecordCount;

 If List_Kosong=0 Then
 MessageDlg('Tidak Ada Item Barang Pada List Pembelian !',mtWarning,[mbOK],0)
 Else
 If KD_DTL='' Then
 MessageDlg('Silakan Pilih Item Barang Yang Akan Dihapus !',mtWarning,[mbOK],0)
 Else
 Begin
 If MessageDlg('Anda Yakin Mau Menghapus Item Pada List ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_tmps_pembelian WHERE kode_brg_detail ="'+KD_DTL+'"');
    Active:=True;

    Delete;
    MessageDlg('Item Barang Berhasil Dihapus Dari List Pembelian',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Tmps_Pembelian.Refresh;
 end;
 end;
 end;
end;

procedure TF_MenuUtama.BTN_SAVE_BELIClick(Sender: TObject);
begin
 If ED_FAKBELI.Text='' Then
    MessageDlg('No. Faktur Harus Disi !',mtWarning,[mbOK],0)
 Else
 If (LBL_KDSPL.Caption='.......') OR (LBL_KDSPL.Caption='') Then
     MessageDlg('Silakan Pilih Nama Suppliernya !',mtWarning,[mbOK],0)
 Else
 If DataModule_TokoBB.ZQ_Pembelian.Locate('fak_beli',ED_FAKBELI.Text,[]) Then
    MessageDlg('No. Faktur Sudah Ada !',mtWarning,[mbOK],0)
 Else
 Begin
   With DataModule_TokoBB.ZQ_Command_SQL Do
        Begin
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_beli');
          Active:=True;

          Append;
          FieldByName('fak_beli').AsString:=ED_FAKBELI.Text;
          FieldByName('tgl_beli').AsDateTime:=Now;
          FieldByName('kode_spl').AsString:=LBL_KDSPL.Caption;
          Post;
          SQL.Clear;
          Active:=False;
          DataModule_TokoBB.ZQ_Pembelian.Refresh;
        end;

     DataModule_TokoBB.ZQ_Tmps_Pembelian.First;
     While Not DataModule_TokoBB.ZQ_Tmps_Pembelian.Eof Do
           Begin
              With DataModule_TokoBB.ZQ_Command_SQL Do
                    Begin
                      SQL.Clear;
                      SQL.Add('SELECT * FROM tbl_belidetail');
                      Active:=True;

                      Append;

                      FieldByName('fak_beli').AsString:=ED_FAKBELI.Text;
                      FieldByName('kode_brg_detail').AsString:=DataModule_TokoBB.ZQ_Tmps_Pembelian.FieldByName('kode_brg_detail').AsString;
                      FieldByName('jml_brg').AsString:=DataModule_TokoBB.ZQ_Tmps_Pembelian.FieldByName('jumlah').AsString;
                      FieldByName('harga_beli').AsString:=DataModule_TokoBB.ZQ_Tmps_Pembelian.FieldByName('harga_beli').AsString;
                      FieldByName('total_harga').AsString:=DataModule_TokoBB.ZQ_Tmps_Pembelian.FieldByName('total_harga').AsString;
                      FieldByName('status').AsString:='Belum Dikonfirmasi';
                      Post;
                      SQL.Clear;
                      DataModule_TokoBB.ZQ_Detail_Pembelian.Refresh;
                    end;
     DataModule_TokoBB.ZQ_Tmps_Pembelian.Next;
     end;
       With DataModule_TokoBB.ZQ_Command_SQL Do
       Begin
          SQL.Clear;
          SQL.Add('TRUNCATE TABLE tbl_tmps_pembelian');
          ExecSQL;
          DataModule_TokoBB.ZQ_Tmps_Pembelian.Refresh;
          MessageDlg('Transaksi Pembelian Berhasil Disimpan !',mtInformation,[mbOK],0);
      End;
 end;
end;

procedure TF_MenuUtama.BTN_VIEW_DATABELIClick(Sender: TObject);
begin
  F_Second_Menu.Show;
  F_Second_Menu.PG_SecondMenu.ActivePage:=F_Second_Menu.TSS_DATABELI;
  F_Second_Menu.TSS_REG.TabVisible := False;
  F_Second_Menu.TSS_JNS_BRG.TabVisible := False;
  F_Second_Menu.TSS_DETAIL_BRG.TabVisible := False;
  F_Second_Menu.TSS_STATUSBELI.TabVisible := False;
end;

procedure TF_MenuUtama.BTN_SETHRGClick(Sender: TObject);
begin
 F_SettingHarga.Show;
end;

procedure TF_MenuUtama.BTNADDClick(Sender: TObject);
begin
  ED_FAKJUAL.Text:='JUAL-'+FOrmatDateTime('hhmmss',Now);
  DT_JUAL.Enabled := True;
  ED_FAKJUAL.Enabled := False;
  BTNADD.Enabled := False;
  BTN_CANCELJUAL.Enabled := True;
end;

procedure TF_MenuUtama.BTN_CANCELJUALClick(Sender: TObject);
begin
  ED_FAKJUAL.Text :='';
  DT_JUAL.Enabled := False;
  BTNADD.Enabled := True;
  BTN_CANCELJUAL.Enabled := False;
end;

procedure TF_MenuUtama.BTN_CLOSEJUALClick(Sender: TObject);
begin
 MessageDlg('Yakin Mau Keluar Form Ini ?',mtInformation,[mbOK],0);
 PG_Tengah.ActivePage:=TS_HOME;
 F_MenuUtama.TS_BARANG.TabVisible:=False;
 F_MenuUtama.TS_CUST.TabVisible:=False;
 F_MenuUtama.TS_SPL.TabVisible:=False;
 F_MenuUtama.TS_BELI.TabVisible:=False;
 F_MenuUtama.TS_JUAL.TabVisible:=False;
 F_MenuUtama.TS_STOCK.TabVisible:=False;
 F_MenuUtama.TS_LAP.TabVisible:=False;
end;

procedure TF_MenuUtama.TDBL_NMCUSTDblClick(Sender: TObject);
begin
With DataModule_TokoBB.ZQ_Customer DO
  Begin
   LB_KDCUST.Caption:=FieldByName('kode_cust').AsString;
   LB_NMCUST.Caption:=FieldByName('nm_cust').AsString;
   LB_ALMTCUST.Caption:=FieldByName('almt_cust').AsString;
   LB_TELPCUST.Caption:=FieldByName('telp_cust').AsString;
  end;
end;

procedure TF_MenuUtama.TS_JUALShow(Sender: TObject);
begin
  ED_FAKJUAL.Text := '';
  LB_KDCUST.Caption := '';
  LB_NMCUST.Caption := '';
  LB_ALMTCUST.Caption := '';
  LB_TELPCUST.Caption := '';

  L_KDBRG.Caption := '';
  L_NMBRG.Caption := '';
  L_JNSBRG.Caption := '';
  L_BRAND.Caption := '';
  L_QTY.Caption := '';
  L_STN.Caption := '';
  L_VARIANT.Caption := '';

  L_HRGJUAL.Caption := '';
  ED_JMLJUAL.Text :='';

  BTNADD.Enabled := True;
  BTN_CANCELJUAL.Enabled := False;
  BTN_CLOSEJUAL.Enabled := True;
  BT_ADDJUAL.Enabled := True;
  BT_DELJUAL.Enabled := False;
  BT_DELALLJUAL.Enabled := False;
  BT_SAVEJUAL.Enabled := False;
  BT_VIEWJUAL.Enabled := True;
Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Text:='TRUNCATE TABLE tbl_tmps_penjualan';
    ExecSQL;
    DataModule_TokoBB.ZQ_Tmps_Penjualan.Refresh;
 end;
end;
end;

procedure TF_MenuUtama.ED_CARICUSTChange(Sender: TObject);
begin
   With DataModule_TokoBB.ZQ_Customer Do
Begin
  SQL.Text:='SELECT * FROM tbl_customer WHERE nm_cust LIKE "%'+ED_CARICUST.Text+'%"';
  Active:=True
End;
end;

procedure TF_MenuUtama.DBG_STOCKCellClick(Column: TColumn);
begin
With DataModule_TokoBB.ZQ_STOCK Do
  Begin
    LB_KDBRG.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('kode_barang').AsString;
    LB_NMBRG.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('nm_merk_barang').AsString;
    LB_JNSBRG.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('jenis_barang').AsString;
    LB_BRAND.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('nm_brand').AsString;
    LB_QTY.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('qty').AsString;
    LB_STN.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('stn').AsString;
    LB_VARIANT.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('varian').AsString;
    LB_HRGJUAL.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('harga_brg').AsString;
    LB_JMLSTOCK.Caption:=DataModule_TokoBB.ZQ_STOCK.FieldByName('jml_stockbrg').AsString;
  End;
end;

procedure TF_MenuUtama.BT_PILIHBRGClick(Sender: TObject);
Var
  KODE_STOCK:String;
  JUMLAH_STOCK:Integer;

begin
TS_JUAL.Show;
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
     L_KDBRG.Caption:=FieldByName('kode_barang').AsString;
     L_NMBRG.Caption:=FieldByName('nm_merk_barang').AsString;
     L_JNSBRG.Caption:=FieldByName('jenis_barang').AsString;
     L_BRAND.Caption:=FieldByName('nm_brand').AsString;
     L_QTY.Caption:=FieldByName('qty').AsString;
     L_STN.Caption:=FieldByName('stn').AsString;
     L_VARIANT.Caption:=FieldByName('varian').AsString;
     L_HRGJUAL.Caption:=FieldByName('harga_brg').AsString;
  End;
          With DataModule_TokoBB.ZQ_Customer DO
           Begin
             LB_KDCUST.Caption:=FieldByName('kode_cust').AsString;
             LB_NMCUST.Caption:=FieldByName('nm_cust').AsString;
             LB_ALMTCUST.Caption:=FieldByName('almt_cust').AsString;
             LB_TELPCUST.Caption:=FieldByName('telp_cust').AsString;
            End;
BT_ADDJUAL.Enabled := True;

end;
End;

procedure TF_MenuUtama.TDBL_NMBRGJUALDblClick(Sender: TObject);
Var
KODEBARANG:String;
begin
F_Second_Menu.Show;
  F_Second_Menu.PG_SecondMenu.ActivePage:=F_Second_Menu.TSS_STOCKBRG;
  F_Second_Menu.TSS_REG.TabVisible := False;
  F_Second_Menu.TSS_JNS_BRG.TabVisible := False;
  F_Second_Menu.TSS_DETAIL_BRG.TabVisible := False;
  F_Second_Menu.TSS_STATUSBELI.TabVisible := False;
  F_Second_Menu.TSS_DATABELI.TabVisible := False;

KODEBARANG:=DataModule_TokoBB.ZQ_BARANG.FieldByName('kode_barang').AsString;
With DataModule_TokoBB.ZQ_Stock Do
  Begin
    SQL.Text:='SELECT `tbl_stockbrg`.* , `tbl_brg_detail`.* , `tbl_barang`.* , `tbl_jns_barang`.* '
                +'FROM `db_tokouniba`.`tbl_brg_detail` '
                +'INNER JOIN `db_tokouniba`.`tbl_stockbrg` '
                +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_stockbrg`.`kode_brg_detail`) '
                +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
                +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`) '
                +'WHERE tbl_barang.kode_barang LIKE "%'+KODEBARANG+'%"';
      Active:=True;
  End;
end;

procedure TF_MenuUtama.BT_ADDJUALClick(Sender: TObject);
Var
  JML_STOCKBRG, TOTAL_HRG, HASIL_TAMBAH, TOTAL_TAMBAH,JML_JUAL : Integer;
  KODE_BRGDETAIL, KODE_STOCKBRG : String;
Begin
  KODE_BRGDETAIL:=DataModule_TokoBB.ZQ_Stock.FieldByName('kode_brg_detail').AsString;
  KODE_STOCKBRG:=DataModule_TokoBB.ZQ_Stock.FieldByName('kode_stockbrg').AsString;

    If KODE_BRGDETAIL='' Then
        MessageDlg('Tidak Ada Data yang DiPilih !',mtWarning, [mbOK],0)
    Else
      If L_KDBRG.Caption='..........' Then
          MessageDlg('Double Klik Dulu Nama Barangnya !',mtWarning, [mbOK],0)
    Else
      If ED_JMLJUAL.Text='' Then
          MessageDlg('Berapa Yang Mau DiJual ?',mtWarning, [mbOK],0)
    Else
      If DataModule_TokoBB.ZQ_Tmps_Penjualan.Locate('kode_brg_detail',KODE_BRGDETAIL,[]) Then
    Begin
      With DataModule_TokoBB.ZQ_Command_SQL Do
        Begin
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_tmps_penjualan WHERE kode_brg_detail = "'+KODE_BRGDETAIL+'"');
          Active:=True;
        End;

        JML_JUAL:=StrtoInt(DataModule_TokoBB.ZQ_Command_SQL.FieldByName('jumlah').AsString);
        TOTAL_HRG:=StrtoInt(DataModule_TokoBB.ZQ_Command_SQL.FieldByName('total_harga').AsString);
        HASIL_TAMBAH:=JML_JUAL+StrtoInt(ED_JMLJUAL.Text);
        TOTAL_TAMBAH:=StrtoInt(L_HRGJUAL.Caption)*HASIL_TAMBAH;
        With DataModule_TokoBB.ZQ_Command_SQL Do
        Begin
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_stockbrg WHERE kode_stockbrg ="'+KODE_STOCKBRG+'"');
          Active:=True;
        End;

        JML_STOCKBRG:=DataModule_TokoBB.ZQ_Command_SQL.FieldByName('jml_stockbrg').AsInteger;
        If (JML_STOCKBRG - HASIL_TAMBAH) < 0 Then
            MessageDlg('Stock Barang Tidak Cukup !',mtInformation,[mbOK],0)
        Else
        Begin
        With DataModule_TokoBB.ZQ_Command_SQL Do
        Begin
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_tmps_penjualan WHERE kode_brg_detail= "'+KODE_BRGDETAIL+'"');
          Active:=True;

          Edit;
          FieldByName('jumlah').AsString:=IntToStr(HASIL_TAMBAH);
          FieldByName('total_harga').AsString:=IntToStr(TOTAL_TAMBAH);
          Post;

          MessageDlg('Data Barang Berhasil DiMasukan Ke Daftar Penjualan !',mtInformation, [mbOK],0);
          DataModule_TokoBB.ZQ_Tmps_Penjualan.Refresh;
        End;
    End;
End Else
Begin
  With DataModule_TokoBB.ZQ_Command_SQL Do
      Begin
      SQL.Clear;
      SQL.Add('SELECT * FROM tbl_stockbrg WHERE kode_stockbrg = "'+KODE_STOCKBRG+'"');
      Active:=True;
      End;
      JML_STOCKBRG:=DataModule_TokoBB.ZQ_command_sql.FieldByName('jml_stockbrg').AsInteger;

      If (JML_STOCKBRG - StrToInt(ED_JMLJUAL.Text)) < 0 Then
      MessageDlg('Stock Barang Tidak Cukup !',mtInformation,[mbOK],0)
Else
Begin
TOTAL_HRG :=StrtoInt(L_HRGJUAL.Caption)*StrtoInt(ED_JMLJUAL.Text);
With DataModule_TokoBB.ZQ_Command_SQL Do
  Begin
     SQL.Clear;
     SQL.Add('SELECT * FROM tbl_tmps_penjualan');
     Active:=True;
     Append;
     FieldByName('kode_brg_detail').AsString:=DataModule_TokoBB.ZQ_Stock.FieldByName('kode_brg_detail').AsString;
     FieldByName('harga_jual').AsString:=L_HRGJUAL.Caption;
     FieldByName('jumlah').AsString:=ED_JMLJUAL.Text;
     FieldByName('total_harga').AsString:=InttoStr(TOTAL_HRG);
     Post;
     MessageDlg('Data Barang Telah Ditambahkan Ke List Penjualan !',mtInformation,[mbOK],0);
     DataModule_TokoBB.ZQ_Tmps_Penjualan.Refresh;
     ED_JMLJUAL.Text :='';
  end;
 End;
end;
end;

procedure TF_MenuUtama.ED_JMLJUALKeyPress(Sender: TObject; var Key: Char);
begin
 If Key = chr(13) Then

 BT_ADDJUAL.SetFocus;

 BT_SAVEJUAL.Enabled := True;
 BT_DELJUAL.Enabled :=True;
 BT_DELALLJUAL.Enabled := True;
end;

procedure TF_MenuUtama.BT_DELJUALClick(Sender: TObject);
Var
 KD_DTL:String;
 List_Kosong: Integer;

 begin
 KD_DTL:=DataModule_TokoBB.ZQ_Tmps_Penjualan.FieldByName('kode_brg_detail').AsString;
 List_Kosong:=DataModule_TokoBB.ZQ_Tmps_Penjualan.RecordCount;

 If List_Kosong=0 Then
 MessageDlg('Tidak Ada Item Barang Pada List Penjualan !',mtWarning,[mbOK],0)
 Else
 If KD_DTL='' Then
 MessageDlg('Silakan Pilih Item Barang Yang Akan Dihapus !',mtWarning,[mbOK],0)
 Else
 Begin
 If MessageDlg('Anda Yakin Mau Menghapus Item Pada List Penjualan ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Add('SELECT * FROM tbl_tmps_penjualan WHERE kode_brg_detail ="'+KD_DTL+'"');
    Active:=True;

    Delete;
    MessageDlg('Item Barang Berhasil Dihapus Dari List Penjualan',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Tmps_Penjualan.Refresh;
 end;
 end;
 end;
end;

procedure TF_MenuUtama.BT_DELALLJUALClick(Sender: TObject);
Var
 ListKosong: Integer;
 Begin
 ListKosong:=DataModule_TokoBB.ZQ_Tmps_Penjualan.RecordCount;
 If ListKosong=0 Then
 MessageDlg('Tidak Ada Item Barang Pada List Penjualan !',mtWarning,[mbOK],0)
 Else
 Begin
 If MessageDlg('Anda Yakin Mau Menghapus SEMUA ITEM Pada List ?',mtInformation,[mbOK,mbCancel],0)=mrOK Then
 Begin
 With DataModule_TokoBB.ZQ_Command_SQL DO
 Begin
    SQL.Clear;
    SQL.Text:='TRUNCATE TABLE tbl_tmps_penjualan';
    ExecSQL;

    MessageDlg('Semua Item Barang Berhasil Dihapus Dari List Penjualan',mtInformation,[mbOK],0);
    DataModule_TokoBB.ZQ_Tmps_Penjualan.Refresh;
 end;
 end;
end;
end;

procedure TF_MenuUtama.BT_SAVEJUALClick(Sender: TObject);
begin
 If ED_FAKJUAL.Text='' Then
    MessageDlg('No. Faktur Harus Disi !',mtWarning,[mbOK],0)
 Else
 If (LB_KDCUST.Caption='.......') OR (LB_KDCUST.Caption='') Then
     MessageDlg('Silakan Pilih Nama Pelanggannya !',mtWarning,[mbOK],0)
 Else
 If DataModule_TokoBB.ZQ_Penjualan.Locate('fak_jual',ED_FAKJUAL.Text,[]) Then
    MessageDlg('No. Faktur Sudah Ada !',mtWarning,[mbOK],0)
 Else
 Begin
   With DataModule_TokoBB.ZQ_Command_SQL Do
        Begin
          SQL.Clear;
          SQL.Add('SELECT * FROM tbl_jual');
          Active:=True;

          Append;
          FieldByName('fak_jual').AsString:=ED_FAKJUAL.Text;
          FieldByName('tgl_jual').AsDateTime:=Now;
          FieldByName('kode_cust').AsString:=LB_KDCUST.Caption;
          Post;
          SQL.Clear;
          Active:=False;
          DataModule_TokoBB.ZQ_Penjualan.Refresh;
        end;

     DataModule_TokoBB.ZQ_Tmps_Penjualan.First;
     While Not DataModule_TokoBB.ZQ_Tmps_Penjualan.Eof Do
           Begin
              With DataModule_TokoBB.ZQ_Command_SQL Do
                    Begin
                      SQL.Clear;
                      SQL.Add('SELECT * FROM tbl_jualdetail');
                      Active:=True;
                      Append;
                      FieldByName('fak_jual').AsString:=ED_FAKJUAL.Text;
                      FieldByName('kode_brg_detail').AsString:=DataModule_TokoBB.ZQ_Tmps_Penjualan.FieldByName('kode_brg_detail').AsString;
                      FieldByName('harga_brg').AsString:=DataModule_TokoBB.ZQ_Tmps_Penjualan.FieldByName('harga_jual').AsString;
                      FieldByName('jumlah').AsString:=DataModule_TokoBB.ZQ_Tmps_Penjualan.FieldByName('jumlah').AsString;
                      FieldByName('total_harga').AsString:=DataModule_TokoBB.ZQ_Tmps_Penjualan.FieldByName('total_harga').AsString;
                      Post;
                      SQL.Clear;
                      DataModule_TokoBB.ZQ_Detail_Penjualan.Refresh;
                    end;
     DataModule_TokoBB.ZQ_Tmps_Penjualan.Next;
     end;
       With DataModule_TokoBB.ZQ_Command_SQL Do
       Begin
          SQL.Clear;
          SQL.Add('TRUNCATE TABLE tbl_tmps_penjualan');
          ExecSQL;
          DataModule_TokoBB.ZQ_Tmps_Penjualan.Refresh;
          MessageDlg('Transaksi Penjualan Berhasil Disimpan !',mtInformation,[mbOK],0);
      End;
 end;
end;
procedure TF_MenuUtama.BTN_FKONFIRMASIClick(Sender: TObject);
begin
  F_Second_Menu.Show;
  F_Second_Menu.PG_SecondMenu.ActivePage:=F_Second_Menu.TSS_STATUSBELI;
  F_Second_Menu.TSS_REG.TabVisible := False;
  F_Second_Menu.TSS_JNS_BRG.TabVisible := False;
  F_Second_Menu.TSS_DETAIL_BRG.TabVisible := False;
  F_Second_Menu.TSS_DATABELI.TabVisible := False;
  F_Second_Menu.TSS_STOCKBRG.TabVisible := False;

  With DataModule_TokoBB.ZQ_Command_SQL Do
  Begin
      SQL.Clear;
      SQL.Add('SELECT DISTINCT(fak_beli) FROM tbl_beli');
      Active:=True;
      F_Second_Menu.CMB_KONF.Items.Clear;

      First;
      While Not Eof Do
            Begin
              F_Second_Menu.CMB_KONF.Items.Add(FieldByName('fak_beli').AsString);
              Next;
            End;
  End;

end;

procedure TF_MenuUtama.BT_VIEWJUALClick(Sender: TObject);
begin
F_Second_Menu.Show;
  F_Second_Menu.PG_SecondMenu.ActivePage:=F_Second_Menu.TSS_DATAJUAL;
  F_Second_Menu.TSS_REG.TabVisible := False;
  F_Second_Menu.TSS_JNS_BRG.TabVisible := False;
  F_Second_Menu.TSS_DETAIL_BRG.TabVisible := False;
  F_Second_Menu.TSS_STATUSBELI.TabVisible := False;
  F_Second_Menu.TSS_DATABELI.TabVisible := False;
  F_Second_Menu.TSS_STOCKBRG.TabVisible := False;
end;

procedure TF_MenuUtama.ED_CARIBRGJUALChange(Sender: TObject);
begin
   With DataModule_TokoBB.ZQ_Barang Do
Begin
  SQL.Text:='SELECT * FROM tbl_barang WHERE nm_merk_barang LIKE "%'+ED_CARIBRGJUAL.Text+'%"';
  Active:=True
End;
end;




procedure TF_MenuUtama.IMG_KELUARClick(Sender: TObject);
begin
 F_MenuUtama.Close;
end;

procedure TF_MenuUtama.IMG_CETAKClick(Sender: TObject);
begin
With DataModule_TokoBB Do
Begin
   With DataModule_TokoBB.ZQ_Detail_Penjualan Do
   Begin
      SQL.Clear;
      SQL.ADD('SELECT `tbl_jualdetail`.* , `tbl_brg_detail`.* '
              +', `tbl_barang`.* , `tbl_jns_barang`.* , `tbl_jual`.* , `tbl_customer`.* '
              +'FROM `db_tokouniba`.`tbl_brg_detail` '
              +'INNER JOIN `db_tokouniba`.`tbl_jualdetail` '
              +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_jualdetail`.`kode_brg_detail`) '
              +'INNER JOIN `db_tokouniba`.`tbl_barang` '
              +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
              +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
              +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`) '
              +'INNER JOIN `db_tokouniba`.`tbl_jual` '
              +'ON (`tbl_jual`.`fak_jual` = `tbl_jualdetail`.`fak_jual`) '
              +'INNER JOIN `db_tokouniba`.`tbl_customer` '
              +'ON (`tbl_customer`.`kode_cust` = `tbl_jual`.`kode_cust`) '
              +'WHERE tbl_jual.fak_jual LIKE "%'+ED_FAKJUAL.Text+'%"');
      Active:=True;
  End;
     RPT_STRUK.LoadFromFile(ExtractFilePath(Application.ExeName)+'Lap_StrukJual.fr3');
     RPT_STRUK.ShowReport();

end;
End;

procedure TF_MenuUtama.IM_BRGClick(Sender: TObject);
begin
DataModule_TokoBB.RPT_DATABARANG.LoadFromFile(ExtractFilePath(Application.ExeName)+'Lap_DataBarang.fr3');
DataModule_TokoBB.RPT_DATABARANG.ShowReport();
end;

procedure TF_MenuUtama.IM_PEMBClick(Sender: TObject);
begin
  F_Detail_Report.Show;
  F_Detail_Report.PG_Report.ActivePage:=F_Detail_Report.TS_RDetailPembelian;
  F_Detail_Report.CMB_BL1.Enabled:=False;
  F_Detail_Report.CMB_BL2.Enabled:=False;
  F_Detail_Report.DTP_BL1.Enabled:=False;
  F_Detail_Report.DTP_BL2.Enabled:=False;

With DataModule_TokoBB.ZQ_Command_SQL Do
        Begin
            SQL.Clear;
            SQL.Add('SELECT DISTINCT(fak_beli) FROM tbl_beli');
            Active:=True;
            F_Detail_Report.CMB_BL1.Items.Clear;
            First;
            While Not EoF Do
              Begin
                F_Detail_Report.CMB_BL1.Items.Add(FieldByName('fak_beli').AsString);
                Next;
              End;
            SQL.Clear;
            SQL.Add('SELECT DISTINCT(nm_spl) FROM tbl_supplier');
            Active:=True;
            F_Detail_Report.CMB_BL2.Items.Clear;

            First;
            While Not EoF Do
              Begin
                F_Detail_Report.CMB_BL2.Items.Add(FieldByName('nm_spl').AsString);
                Next;
              End;
        End;
end;

procedure TF_MenuUtama.IM_STOCKClick(Sender: TObject);
begin
  F_Detail_Report.Show;
  F_Detail_Report.PG_Report.ActivePage:=F_Detail_Report.TS_StockBrg;
  F_Detail_Report.CMB_NMBRG.Enabled:=False;
  F_Detail_Report.ED_RSTOCK.Enabled:=False;
With DataModule_TokoBB.ZQ_Command_SQL Do
        Begin
            SQL.Clear;
            SQL.Add('SELECT DISTINCT(nm_merk_barang) FROM tbl_barang');
            Active:=True;
            F_Detail_Report.CMB_NMBRG.Items.Clear;

            First;
            While Not EoF Do
              Begin
                F_Detail_Report.CMB_NMBRG.Items.Add(FieldByName('nm_merk_barang').AsString);
                Next;
              End;
        End;
end;

procedure TF_MenuUtama.IM_PENJClick(Sender: TObject);
begin
  F_Detail_Report.Show;
  F_Detail_Report.PG_Report.ActivePage:=F_Detail_Report.TS_RDetailPenjualan;
  F_Detail_Report.CMB_JL1.Enabled:=False;
  F_Detail_Report.CMB_JL2.Enabled:=False;
  F_Detail_Report.DTP_JL1.Enabled:=False;
  F_Detail_Report.DTP_JL2.Enabled:=False;


With DataModule_TokoBB.ZQ_Command_SQL Do
        Begin
            SQL.Clear;
            SQL.Add('SELECT DISTINCT(fak_jual) FROM tbl_jual');
            Active:=True;
            F_Detail_Report.CMB_JL1.Items.Clear;

            First;
            While Not EoF Do
              Begin
                F_Detail_Report.CMB_JL1.Items.Add(FieldByName('fak_jual').AsString);
                Next;
              End;

            SQL.Clear;
            SQL.Add('SELECT DISTINCT(jenis_barang) FROM tbl_jns_barang');
            Active:=True;
            F_Detail_Report.CMB_JL2.Items.Clear;

            First;
            While Not EoF Do
              Begin
                F_Detail_Report.CMB_JL2.Items.Add(FieldByName('jenis_barang').AsString);
                Next;
              End;
        End;


end;

procedure TF_MenuUtama.IM_SPLClick(Sender: TObject);
begin
DataModule_TokoBB.RPT_SUPPLIER.LoadFromFile(ExtractFilePath(Application.ExeName)+'Lap_DataSPL.fr3');
DataModule_TokoBB.RPT_SUPPLIER.ShowReport();
end;

procedure TF_MenuUtama.IM_CUSTClick(Sender: TObject);
begin
DataModule_TokoBB.RPT_CUSTOMER.LoadFromFile(ExtractFilePath(Application.ExeName)+'Lap_DataCUST.fr3');
DataModule_TokoBB.RPT_CUSTOMER.ShowReport();
end;

end.
