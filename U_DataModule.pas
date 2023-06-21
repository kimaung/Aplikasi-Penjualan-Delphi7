unit U_DataModule;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass, frxDBSet;

type
  TDataModule_TokoBB = class(TDataModule)
    ZCon_TokoBB: TZConnection;
    ZQ_Command_SQL: TZQuery;
    ZQ_Admin: TZQuery;
    DS_Admin: TDataSource;
    ZQ_Jenis_Barang: TZQuery;
    DS_Jenis_Barang: TDataSource;
    ZQ_Barang: TZQuery;
    DS_Barang: TDataSource;
    ZQ_Detail_Barang: TZQuery;
    DS_Detail_Barang: TDataSource;
    ZQ_Customer: TZQuery;
    DS_Customer: TDataSource;
    ZQ_Supplier: TZQuery;
    DS_Supplier: TDataSource;
    ZQ_Pembelian: TZQuery;
    DS_Pembelian: TDataSource;
    ZQ_Tmps_Pembelian: TZQuery;
    DS_Tmps_Pembelian: TDataSource;
    ZQ_Detail_Pembelian: TZQuery;
    DS_Detail_Pembelian: TDataSource;
    ZQ_Stock: TZQuery;
    DS_Stock: TDataSource;
    ZQ_Penjualan: TZQuery;
    ZQ_Tmps_Penjualan: TZQuery;
    ZQ_Detail_Penjualan: TZQuery;
    DS_Penjualan: TDataSource;
    DS_Tmps_Penjualan: TDataSource;
    DS_Detail_Penjualan: TDataSource;
    RPT_DATABARANG: TfrxReport;
    RPTDB_DATABARANG: TfrxDBDataset;
    RPT_STRUK: TfrxReport;
    RPTDB_STRUK: TfrxDBDataset;
    RPT_PEMBELIAN: TfrxReport;
    RPTDB_PEMBELIAN: TfrxDBDataset;
    RPT_PERSEDIAAN: TfrxReport;
    RPTDB_PERSEDIAAN: TfrxDBDataset;
    RPT_PENJUALAN: TfrxReport;
    RPTDB_PENJUALAN: TfrxDBDataset;
    RPT_SUPPLIER: TfrxReport;
    RPTDB_SPL: TfrxDBDataset;
    RPT_CUSTOMER: TfrxReport;
    RPTDB_CUST: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule_TokoBB: TDataModule_TokoBB;

implementation

{$R *.dfm}

end.
