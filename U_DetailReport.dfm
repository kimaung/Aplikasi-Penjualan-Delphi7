object F_Detail_Report: TF_Detail_Report
  Left = 185
  Top = 200
  Width = 400
  Height = 247
  Caption = 'Report Detail'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PG_Report: TPageControl
    Left = 0
    Top = 0
    Width = 384
    Height = 208
    ActivePage = TS_RDetailPenjualan
    Align = alClient
    TabOrder = 0
    object TS_RDetailPembelian: TTabSheet
      Caption = 'Pembelian'
      object Label3: TLabel
        Left = 8
        Top = 48
        Width = 70
        Height = 13
        Caption = 'No. Faktur Beli'
      end
      object Label4: TLabel
        Left = 8
        Top = 72
        Width = 69
        Height = 13
        Caption = 'Nama Supplier'
      end
      object Label5: TLabel
        Left = 8
        Top = 104
        Width = 70
        Height = 13
        Caption = 'Tgl. Pembelian'
      end
      object Label6: TLabel
        Left = 216
        Top = 104
        Width = 24
        Height = 13
        Alignment = taCenter
        Caption = 'S/D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CMB_BL1: TComboBox
        Left = 128
        Top = 48
        Width = 209
        Height = 21
        ItemHeight = 13
        TabOrder = 0
      end
      object DTP_BL1: TDateTimePicker
        Left = 128
        Top = 96
        Width = 89
        Height = 25
        Date = 44652.048573182870000000
        Time = 44652.048573182870000000
        TabOrder = 1
      end
      object CMB_BL2: TComboBox
        Left = 128
        Top = 72
        Width = 209
        Height = 21
        ItemHeight = 13
        TabOrder = 2
      end
      object DTP_BL2: TDateTimePicker
        Left = 248
        Top = 96
        Width = 89
        Height = 25
        Date = 44652.048573182870000000
        Time = 44652.048573182870000000
        TabOrder = 3
      end
      object BTN_BLREPORT: TButton
        Left = 8
        Top = 144
        Width = 105
        Height = 25
        Caption = 'View Report'
        TabOrder = 4
        OnClick = BTN_BLREPORTClick
      end
      object BTN_CLR: TButton
        Left = 232
        Top = 144
        Width = 105
        Height = 25
        Caption = 'Close Report'
        TabOrder = 5
        OnClick = BTN_CLRClick
      end
      object RG_BL: TRadioGroup
        Left = 8
        Top = 0
        Width = 329
        Height = 41
        Caption = 'Select Option By.'
        Columns = 4
        Items.Strings = (
          'No. Faktur'
          'Supplier'
          'Tanggal'
          'All')
        TabOrder = 6
        OnClick = RG_BLClick
      end
    end
    object TS_StockBrg: TTabSheet
      Caption = 'Persediaan'
      ImageIndex = 1
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 65
        Height = 13
        Caption = 'Nama Barang'
      end
      object Label2: TLabel
        Left = 16
        Top = 80
        Width = 64
        Height = 13
        Caption = 'Jumlah Stock'
      end
      object RDG_STOCK: TRadioGroup
        Left = 8
        Top = 8
        Width = 329
        Height = 41
        Caption = 'Select Option By.'
        Columns = 3
        Items.Strings = (
          'Nama Barang'
          'Stock Minimum'
          'All')
        TabOrder = 0
        OnClick = RDG_STOCKClick
      end
      object BTN_VREPORT: TButton
        Left = 32
        Top = 136
        Width = 97
        Height = 25
        Caption = 'View Report'
        TabOrder = 1
        OnClick = BTN_VREPORTClick
      end
      object BT_CREPORT: TButton
        Left = 240
        Top = 136
        Width = 97
        Height = 25
        Caption = 'Close Report'
        TabOrder = 2
        OnClick = BT_CREPORTClick
      end
      object CMB_NMBRG: TComboBox
        Left = 128
        Top = 56
        Width = 209
        Height = 21
        ItemHeight = 0
        TabOrder = 3
      end
      object ED_RSTOCK: TEdit
        Left = 128
        Top = 80
        Width = 209
        Height = 21
        TabOrder = 4
      end
    end
    object TS_RDetailPenjualan: TTabSheet
      Caption = 'Penjualan'
      ImageIndex = 2
      object Label9: TLabel
        Left = 8
        Top = 104
        Width = 70
        Height = 13
        Caption = 'Tgl. Pembelian'
      end
      object Label7: TLabel
        Left = 8
        Top = 56
        Width = 50
        Height = 13
        Caption = 'No. Faktur'
      end
      object Label8: TLabel
        Left = 8
        Top = 80
        Width = 61
        Height = 13
        Caption = 'Jenis Barang'
      end
      object Label10: TLabel
        Left = 240
        Top = 112
        Width = 24
        Height = 13
        Caption = 'S/D'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object RG_JL: TRadioGroup
        Left = 8
        Top = 8
        Width = 345
        Height = 41
        Caption = 'Select Option BY'
        Columns = 4
        Items.Strings = (
          'No. Faktur'
          'Jenis Barang'
          'Tanggal'
          'All')
        TabOrder = 6
        OnClick = RG_JLClick
      end
      object BTN_JL: TButton
        Left = 8
        Top = 144
        Width = 105
        Height = 25
        Caption = 'View Report'
        TabOrder = 0
        OnClick = BTN_JLClick
      end
      object CMB_JL1: TComboBox
        Left = 144
        Top = 56
        Width = 209
        Height = 21
        ItemHeight = 13
        TabOrder = 1
      end
      object CMB_JL2: TComboBox
        Left = 144
        Top = 80
        Width = 209
        Height = 21
        ItemHeight = 13
        TabOrder = 2
      end
      object DTP_JL1: TDateTimePicker
        Left = 144
        Top = 104
        Width = 89
        Height = 25
        Date = 44652.048573182870000000
        Time = 44652.048573182870000000
        TabOrder = 3
      end
      object DTP_JL2: TDateTimePicker
        Left = 264
        Top = 104
        Width = 89
        Height = 25
        Date = 44652.048573182870000000
        Time = 44652.048573182870000000
        TabOrder = 4
      end
      object BTN_CJL: TButton
        Left = 232
        Top = 144
        Width = 105
        Height = 25
        Caption = 'Close Report'
        TabOrder = 5
        OnClick = BTN_CJLClick
      end
    end
  end
end
