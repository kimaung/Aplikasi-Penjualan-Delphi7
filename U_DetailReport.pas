unit U_DetailReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls;

type
  TF_Detail_Report = class(TForm)
    PG_Report: TPageControl;
    TS_RDetailPembelian: TTabSheet;
    Label3: TLabel;
    CMB_BL1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DTP_BL1: TDateTimePicker;
    CMB_BL2: TComboBox;
    Label6: TLabel;
    DTP_BL2: TDateTimePicker;
    BTN_BLREPORT: TButton;
    BTN_CLR: TButton;
    RG_BL: TRadioGroup;
    TS_StockBrg: TTabSheet;
    RDG_STOCK: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    BTN_VREPORT: TButton;
    BT_CREPORT: TButton;
    CMB_NMBRG: TComboBox;
    ED_RSTOCK: TEdit;
    TS_RDetailPenjualan: TTabSheet;
    Label9: TLabel;
    RG_JL: TRadioGroup;
    Label7: TLabel;
    Label8: TLabel;
    BTN_JL: TButton;
    CMB_JL1: TComboBox;
    CMB_JL2: TComboBox;
    DTP_JL1: TDateTimePicker;
    Label10: TLabel;
    DTP_JL2: TDateTimePicker;
    BTN_CJL: TButton;
    procedure RG_BLClick(Sender: TObject);
    procedure BTN_BLREPORTClick(Sender: TObject);
    procedure BTN_CLRClick(Sender: TObject);
    procedure BT_CREPORTClick(Sender: TObject);
    procedure RDG_STOCKClick(Sender: TObject);
    procedure BTN_VREPORTClick(Sender: TObject);
    procedure BTN_JLClick(Sender: TObject);
    procedure BTN_CJLClick(Sender: TObject);
    procedure RG_JLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Detail_Report: TF_Detail_Report;

implementation

uses U_DataModule;

{$R *.dfm}

procedure TF_Detail_Report.RG_BLClick(Sender: TObject);
begin
CASE RG_BL.ItemIndex OF
  -1:BEGIN
        MessageDlg('Silakan Pilih Kategori Laporan Pembelian !',mtWarning,[mbOK],0)
      END;
  0:BEGIN
      CMB_BL1.Enabled:=True;
      CMB_BL2.Enabled:=False;
      DTP_BL1.Enabled:=False;
      DTP_BL2.Enabled:=False;
    END;
  1:BEGIN
      CMB_BL1.Enabled:=False;
      CMB_BL2.Enabled:=True;
      DTP_BL1.Enabled:=False;
      DTP_BL2.Enabled:=False;
     END;
  2:BEGIN
      CMB_BL1.Enabled:=False;
      CMB_BL2.Enabled:=False;
      DTP_BL1.Enabled:=True;
      DTP_BL2.Enabled:=True;
     END;
  3:BEGIN
      CMB_BL1.Enabled:=False;
      CMB_BL2.Enabled:=False;
      DTP_BL1.Enabled:=False;
      DTP_BL2.Enabled:=False;
     END;
end;
end;

procedure TF_Detail_Report.BTN_BLREPORTClick(Sender: TObject);
begin
CASE RG_BL.ItemIndex OF
    -1: BEGIN
          MessageDlg('Pilih Kategori Laporan Belinya !',mtWarning,[mbOK],0)
        END;
     0:BEGIN
          WITH DataModule_TokoBB.ZQ_Detail_Pembelian Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_belidetail`.* , `tbl_beli`.* , `tbl_brg_detail`.* , `tbl_barang`.*  , `tbl_supplier`.* , `tbl_jns_barang`.* '
                    +'FROM `db_tokouniba`.`tbl_beli` '
                    +'INNER JOIN `db_tokouniba`.`tbl_belidetail` '
                    +'ON (`tbl_beli`.`fak_beli` = `tbl_belidetail`.`fak_beli`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_brg_detail` '
                    +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_belidetail`.`kode_brg_detail`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                    +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_supplier` '
                    +'ON (`tbl_supplier`.`kode_spl` = `tbl_beli`.`kode_spl`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
                    +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`) '
                    +'WHERE tbl_belidetail.fak_beli LIKE "%'+CMB_BL1.Text+'%"');
            Active:=True;
          END;
        END;
     1:BEGIN
          WITH DataModule_TokoBB.ZQ_Detail_Pembelian Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_belidetail`.* , `tbl_beli`.* , `tbl_brg_detail`.* , `tbl_barang`.*  , `tbl_supplier`.* , `tbl_jns_barang`.* '
                    +'FROM `db_tokouniba`.`tbl_beli` '
                    +'INNER JOIN `db_tokouniba`.`tbl_belidetail` '
                    +'ON (`tbl_beli`.`fak_beli` = `tbl_belidetail`.`fak_beli`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_brg_detail` '
                    +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_belidetail`.`kode_brg_detail`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                    +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_supplier` '
                    +'ON (`tbl_supplier`.`kode_spl` = `tbl_beli`.`kode_spl`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
                    +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`) '
                    +'WHERE tbl_supplier.nm_spl LIKE "%'+CMB_BL2.Text+'%"');
            Active:=True;
          END;
        END;
     2:BEGIN
          WITH DataModule_TokoBB.ZQ_Detail_Pembelian Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_belidetail`.* , `tbl_beli`.* , `tbl_brg_detail`.* , `tbl_barang`.*  , `tbl_supplier`.* , `tbl_jns_barang`.* '
                    +'FROM `db_tokouniba`.`tbl_beli` '
                    +'INNER JOIN `db_tokouniba`.`tbl_belidetail` '
                    +'ON (`tbl_beli`.`fak_beli` = `tbl_belidetail`.`fak_beli`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_brg_detail` '
                    +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_belidetail`.`kode_brg_detail`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                    +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_supplier` '
                    +'ON (`tbl_supplier`.`kode_spl` = `tbl_beli`.`kode_spl`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
                    +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`) '

                    +'WHERE tbl_beli.tgl_beli BETWEEN "'+FormatDateTime('yyyy-mm-dd',DTP_BL1.Date)+'" '
                    +'AND "'+FormatDateTime('yyyy-mm-dd',DTP_BL2.Date)+'"');
            Active:=True;
          END;
       END;

     3:BEGIN
          WITH DataModule_TokoBB.ZQ_Detail_Pembelian Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_belidetail`.* , `tbl_beli`.* , `tbl_brg_detail`.* , `tbl_barang`.*  , `tbl_supplier`.* , `tbl_jns_barang`.* '
                    +'FROM `db_tokouniba`.`tbl_beli` '
                    +'INNER JOIN `db_tokouniba`.`tbl_belidetail` '
                    +'ON (`tbl_beli`.`fak_beli` = `tbl_belidetail`.`fak_beli`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_brg_detail` '
                    +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_belidetail`.`kode_brg_detail`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                    +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_supplier` '
                    +'ON (`tbl_supplier`.`kode_spl` = `tbl_beli`.`kode_spl`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
                    +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`) ');

            Active:=True;
          END;
       END;
end;
DataModule_TokoBB.RPT_PEMBELIAN.LoadFromFile(ExtractFilePath(Application.ExeName)+'Lap_Pembelian.fr3');
DataModule_TokoBB.RPT_PEMBELIAN.ShowReport();

end;

procedure TF_Detail_Report.BTN_CLRClick(Sender: TObject);
begin
F_Detail_Report.Close;
end;

procedure TF_Detail_Report.BT_CREPORTClick(Sender: TObject);
begin
F_Detail_Report.Close;
end;

procedure TF_Detail_Report.RDG_STOCKClick(Sender: TObject);
begin
CASE RDG_STOCK.ItemIndex OF
  -1:BEGIN
        MessageDlg('Silakan Pilih Kategorinya !',mtWarning,[mbOK],0)
      END;
  0:BEGIN
      ED_RSTOCK.Enabled:=False;
      CMB_NMBRG.Enabled:=True;
    END;
  1:BEGIN
      CMB_NMBRG.Enabled:=False;
      ED_RSTOCK.Enabled:=True;
     END;
  2:BEGIN
      CMB_NMBRG.Enabled:=False;
      ED_RSTOCK.Enabled:=False;
     END;
end;
end;

procedure TF_Detail_Report.BTN_VREPORTClick(Sender: TObject);
begin
CASE RDG_STOCK.ItemIndex OF
    -1: BEGIN
          MessageDlg('Pilih Kategorinya !',mtWarning,[mbOK],0)
        END;
    0:BEGIN
          WITH DataModule_TokoBB.ZQ_Stock DO
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_stockbrg`.* , `tbl_brg_detail`.* , `tbl_barang`.* , `tbl_jns_barang`.* '
                    +'FROM `db_tokouniba`.`tbl_brg_detail` '
                    +'INNER JOIN `db_tokouniba`.`tbl_stockbrg` '
                    +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_stockbrg`.`kode_brg_detail`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                    +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
                    +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`) '
                    +'WHERE tbl_barang.nm_merk_barang LIKE "%'+CMB_NMBRG.Text+'%"');
            Active:=True;
          end;
       END;

      1:BEGIN
          WITH DataModule_TokoBB.ZQ_Stock Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_stockbrg`.* , `tbl_brg_detail`.* , `tbl_barang`.* , `tbl_jns_barang`.* '
                    +'FROM `db_tokouniba`.`tbl_brg_detail` '
                    +'INNER JOIN `db_tokouniba`.`tbl_stockbrg` '
                    +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_stockbrg`.`kode_brg_detail`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                    +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
                    +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`) '
                    +'WHERE tbl_stockbrg.jml_stockbrg LIKE "%'+ED_RSTOCK.Text+'%"');
            Active:=True;
          End;
       END;

      2:BEGIN
          WITH DataModule_TokoBB.ZQ_Stock Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_stockbrg`.* , `tbl_brg_detail`.* , `tbl_barang`.* , `tbl_jns_barang`.* '
                    +'FROM `db_tokouniba`.`tbl_brg_detail` '
                    +'INNER JOIN `db_tokouniba`.`tbl_stockbrg` '
                    +'ON (`tbl_brg_detail`.`kode_brg_detail` = `tbl_stockbrg`.`kode_brg_detail`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_barang` '
                    +'ON (`tbl_barang`.`kode_barang` = `tbl_brg_detail`.`kode_barang`) '
                    +'INNER JOIN `db_tokouniba`.`tbl_jns_barang` '
                    +'ON (`tbl_jns_barang`.`kode_jns_barang` = `tbl_barang`.`kode_jns_barang`)');

            Active:=True;
          End;
       END;
     end;
DataModule_TokoBB.RPT_PERSEDIAAN.LoadFromFile(ExtractFilePath(Application.ExeName)+'Lap_Persediaan.fr3');
DataModule_TokoBB.RPT_PERSEDIAAN.ShowReport();
end;

procedure TF_Detail_Report.BTN_JLClick(Sender: TObject);
begin
CASE RG_JL.ItemIndex OF
    -1: BEGIN
          MessageDlg('Pilih Kategori Laporan Jualnya !',mtWarning,[mbOK],0)
        END;
     0:BEGIN
          WITH DataModule_TokoBB.ZQ_Detail_Penjualan Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_jualdetail`.* , `tbl_brg_detail`.* , `tbl_barang`.* , `tbl_jns_barang`.* , `tbl_jual`.* , `tbl_customer`.* '
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

                    +'WHERE tbl_jualdetail.fak_jual LIKE "%'+CMB_JL1.Text+'%"');
            Active:=True;
          END;
        END;
     1:BEGIN
          WITH DataModule_TokoBB.ZQ_Detail_Penjualan Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_jualdetail`.* , `tbl_brg_detail`.* , `tbl_barang`.* , `tbl_jns_barang`.* , `tbl_jual`.* , `tbl_customer`.* '
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

                    +'WHERE tbl_jns_barang.jenis_barang LIKE "%'+CMB_JL2.Text+'%"');
            Active:=True;
          END;
        END;
     2:BEGIN
          WITH DataModule_TokoBB.ZQ_Detail_Penjualan Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_jualdetail`.* , `tbl_brg_detail`.* , `tbl_barang`.* , `tbl_jns_barang`.* , `tbl_jual`.* , `tbl_customer`.* '
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

                    +'WHERE tbl_jual.tgl_jual BETWEEN "'+FormatDateTime('yyyy-mm-dd',DTP_JL1.Date)+'" '
                    +'AND "'+FormatDateTime('yyyy-mm-dd',DTP_JL2.Date)+'"');
            Active:=True;
          END;
       END;

     3:BEGIN
          WITH DataModule_TokoBB.ZQ_Detail_Penjualan Do
          Begin
            SQL.Clear;
            SQL.Add('SELECT `tbl_jualdetail`.* , `tbl_brg_detail`.* , `tbl_barang`.* , `tbl_jns_barang`.* , `tbl_jual`.* , `tbl_customer`.* '
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
                     +'ON (`tbl_customer`.`kode_cust` = `tbl_jual`.`kode_cust`) ');

            Active:=True;
          END;
       END;
end;
DataModule_TokoBB.RPT_PENJUALAN.LoadFromFile(ExtractFilePath(Application.ExeName)+'Lap_Jual.fr3');
DataModule_TokoBB.RPT_PENJUALAN.ShowReport();

end;

procedure TF_Detail_Report.BTN_CJLClick(Sender: TObject);
begin
F_Detail_Report.Close;
end;

procedure TF_Detail_Report.RG_JLClick(Sender: TObject);
begin
CASE RG_JL.ItemIndex OF
  -1:BEGIN
        MessageDlg('Silakan Pilih Kategori Laporan Penjualan !',mtWarning,[mbOK],0)
      END;

  0:BEGIN
      CMB_JL1.Enabled:=True;
      CMB_JL2.Enabled:=False;
      DTP_JL1.Enabled:=False;
      DTP_JL2.Enabled:=False;
    END;

  1:BEGIN
      CMB_JL1.Enabled:=False;
      CMB_JL2.Enabled:=True;
      DTP_JL1.Enabled:=False;
      DTP_JL2.Enabled:=False;
     END;

  2:BEGIN
      CMB_JL1.Enabled:=False;
      CMB_JL2.Enabled:=False;
      DTP_JL1.Enabled:=True;
      DTP_JL2.Enabled:=True;
     END;
  3:BEGIN
      CMB_JL1.Enabled:=False;
      CMB_JL2.Enabled:=False;
      DTP_JL1.Enabled:=False;
      DTP_JL2.Enabled:=False;
     END;

end;
end;

end.
