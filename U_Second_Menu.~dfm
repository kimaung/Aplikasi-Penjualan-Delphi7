object F_Second_Menu: TF_Second_Menu
  Left = -82
  Top = 128
  Width = 1005
  Height = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PG_SecondMenu: TPageControl
    Left = 0
    Top = 0
    Width = 989
    Height = 540
    ActivePage = TSS_DETAIL_BRG
    Align = alClient
    TabOrder = 0
    object TSS_REG: TTabSheet
      Caption = 'Form Registrasi'
      OnShow = TSS_REGShow
      object Label1: TLabel
        Left = 56
        Top = 16
        Width = 365
        Height = 27
        Caption = 'Form Pendaftaran Administrator Baru'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 40
        Top = 48
        Width = 417
        Height = 89
        TabOrder = 0
        object Label2: TLabel
          Left = 16
          Top = 16
          Width = 40
          Height = 16
          Caption = 'Nama '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 16
          Top = 56
          Width = 60
          Height = 16
          Caption = 'Password'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ED_NM_REG: TEdit
          Left = 112
          Top = 16
          Width = 177
          Height = 21
          TabOrder = 0
        end
        object ED_PASS_REG: TEdit
          Left = 112
          Top = 48
          Width = 177
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
        end
        object BTN_OK: TButton
          Left = 328
          Top = 16
          Width = 65
          Height = 25
          Caption = 'OK'
          TabOrder = 2
          OnClick = BTN_OKClick
        end
        object BTN_CANCEL: TButton
          Left = 328
          Top = 48
          Width = 65
          Height = 25
          Caption = 'Cancel'
          TabOrder = 3
          OnClick = BTN_CANCELClick
        end
      end
      object GroupBox2: TGroupBox
        Left = 40
        Top = 160
        Width = 425
        Height = 201
        Caption = 'Registrasi New Administrator'
        TabOrder = 1
        object Label4: TLabel
          Left = 8
          Top = 64
          Width = 37
          Height = 16
          Caption = 'Nama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 8
          Top = 96
          Width = 60
          Height = 16
          Caption = 'Password'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 8
          Top = 128
          Width = 33
          Height = 16
          Caption = 'Level'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 32
          Width = 45
          Height = 16
          Caption = 'ID User'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object LBL_ID: TLabel
          Left = 120
          Top = 32
          Width = 15
          Height = 16
          Caption = '.....'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object ED_NM_NEWREG: TEdit
          Left = 120
          Top = 64
          Width = 273
          Height = 21
          TabOrder = 0
          OnKeyPress = ED_NM_NEWREGKeyPress
        end
        object ED_PASS_NEWREG: TEdit
          Left = 120
          Top = 96
          Width = 273
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
        end
        object CMB_LEVEL_NEWREG: TComboBox
          Left = 120
          Top = 128
          Width = 121
          Height = 21
          ItemHeight = 13
          TabOrder = 2
          Items.Strings = (
            'User'
            'Admin')
        end
        object B_SAVE: TButton
          Left = 24
          Top = 168
          Width = 73
          Height = 25
          Caption = 'Save'
          TabOrder = 3
          OnClick = B_SAVEClick
        end
        object B_UBAH: TButton
          Left = 120
          Top = 168
          Width = 73
          Height = 25
          Caption = 'Update'
          TabOrder = 4
          OnClick = B_UBAHClick
        end
        object B_HAPUS: TButton
          Left = 216
          Top = 168
          Width = 73
          Height = 25
          Caption = 'Delete'
          TabOrder = 5
          OnClick = B_HAPUSClick
        end
        object B_TUTUP: TButton
          Left = 320
          Top = 168
          Width = 73
          Height = 25
          Caption = 'Close'
          TabOrder = 6
          OnClick = B_TUTUPClick
        end
      end
      object DBG_REGISTER: TDBGrid
        Left = 472
        Top = 56
        Width = 401
        Height = 273
        DataSource = DataModule_TokoBB.DS_Admin
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBG_REGISTERDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'kode_admin'
            Title.Alignment = taCenter
            Title.Caption = 'ID PENGGUNA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_admin'
            Title.Alignment = taCenter
            Title.Caption = 'NAMA PENGGUNA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'level'
            Title.Caption = 'LEVEL'
            Visible = True
          end>
      end
    end
    object TSS_JNS_BRG: TTabSheet
      Caption = 'Form Jenis Barang'
      ImageIndex = 1
      object Label8: TLabel
        Left = 88
        Top = 16
        Width = 265
        Height = 27
        Caption = 'Form Tambah Jenis Barang'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        Left = 2
        Top = 48
        Width = 431
        Height = 3
      end
      object Label9: TLabel
        Left = 8
        Top = 64
        Width = 79
        Height = 16
        Caption = 'Jenis Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Shape2: TShape
        Left = 2
        Top = 208
        Width = 431
        Height = 3
      end
      object DBG_Jenis_Barang: TDBGrid
        Left = 8
        Top = 96
        Width = 321
        Height = 89
        DataSource = DataModule_TokoBB.DS_Jenis_Barang
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = DBG_Jenis_BarangDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'kode_jns_barang'
            Title.Alignment = taCenter
            Title.Caption = 'ID JENIS BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_barang'
            Title.Caption = 'JENIS BARANG'
            Visible = True
          end>
      end
      object ED_TAMBAH_JNSBRG: TEdit
        Left = 104
        Top = 64
        Width = 225
        Height = 21
        TabOrder = 1
      end
      object BTN_SAVE_JNSBRG: TButton
        Left = 352
        Top = 64
        Width = 73
        Height = 25
        Caption = 'Save'
        TabOrder = 2
        OnClick = BTN_SAVE_JNSBRGClick
      end
      object BTN_EDIT_JNSBR: TButton
        Left = 352
        Top = 96
        Width = 73
        Height = 25
        Caption = 'Edit'
        TabOrder = 3
        OnClick = BTN_EDIT_JNSBRClick
      end
      object BTN_DEL_JNSBRG: TButton
        Left = 352
        Top = 128
        Width = 73
        Height = 25
        Caption = 'Delete'
        TabOrder = 4
        OnClick = BTN_DEL_JNSBRGClick
      end
      object BTN_TUTUP_JNSBRG: TButton
        Left = 352
        Top = 160
        Width = 73
        Height = 25
        Caption = 'Close Form'
        TabOrder = 5
        OnClick = BTN_TUTUP_JNSBRGClick
      end
      object GroupBox3: TGroupBox
        Left = 216
        Top = 216
        Width = 217
        Height = 57
        Caption = 'Search By Name'
        TabOrder = 6
        object ED_CARI_JNSBRG: TEdit
          Left = 8
          Top = 24
          Width = 201
          Height = 21
          TabOrder = 0
          OnChange = ED_CARI_JNSBRGChange
        end
      end
    end
    object TSS_DETAIL_BRG: TTabSheet
      Caption = 'Form Tambah Detail Barang'
      ImageIndex = 2
      object Label10: TLabel
        Left = 232
        Top = 8
        Width = 275
        Height = 27
        Caption = 'Form Tambah Detail Barang'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
      end
      object Shape3: TShape
        Left = 2
        Top = 40
        Width = 800
        Height = 3
      end
      object Shape4: TShape
        Left = 2
        Top = 208
        Width = 800
        Height = 3
      end
      object Label11: TLabel
        Left = 8
        Top = 64
        Width = 79
        Height = 16
        Caption = 'Kode Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 8
        Top = 96
        Width = 117
        Height = 16
        Caption = 'Nama Merk Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 8
        Top = 128
        Width = 79
        Height = 16
        Caption = 'Jenis Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 8
        Top = 160
        Width = 97
        Height = 16
        Caption = 'Company Brand'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 408
        Top = 64
        Width = 97
        Height = 16
        Caption = 'Isi Per Kemasan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 408
        Top = 96
        Width = 89
        Height = 16
        Caption = 'Satuan Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 408
        Top = 128
        Width = 77
        Height = 16
        Caption = 'Jenis Variant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 408
        Top = 160
        Width = 123
        Height = 16
        Caption = 'Tanggal Kadaluarsa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 152
        Top = 64
        Width = 7
        Height = 16
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 152
        Top = 96
        Width = 7
        Height = 16
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 152
        Top = 128
        Width = 7
        Height = 16
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 152
        Top = 160
        Width = 7
        Height = 16
        Caption = '='
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LBL_KDBRG: TLabel
        Left = 176
        Top = 64
        Width = 30
        Height = 16
        Caption = '..........'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LBL_NMBRG: TLabel
        Left = 176
        Top = 96
        Width = 30
        Height = 16
        Caption = '..........'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LBL_JNSBRG: TLabel
        Left = 176
        Top = 128
        Width = 30
        Height = 16
        Caption = '..........'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LBL_BRAND: TLabel
        Left = 176
        Top = 160
        Width = 30
        Height = 16
        Caption = '..........'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label23: TLabel
        Left = 16
        Top = 224
        Width = 134
        Height = 27
        Caption = 'Detail Barang'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 560
        Top = 480
        Width = 102
        Height = 16
        Caption = 'Search By Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ED_ISI: TEdit
        Left = 544
        Top = 64
        Width = 161
        Height = 21
        TabOrder = 0
      end
      object CMB_STN: TComboBox
        Left = 544
        Top = 96
        Width = 161
        Height = 21
        ItemHeight = 13
        TabOrder = 1
        Items.Strings = (
          'PCS'
          'BOX'
          'BUNGKUS'
          'DUS'
          'KALENG'
          'KG')
      end
      object DTP_EXP: TDateTimePicker
        Left = 544
        Top = 160
        Width = 161
        Height = 25
        Date = 44671.024753773150000000
        Time = 44671.024753773150000000
        TabOrder = 2
      end
      object BTN_SAVE_DTLBRG: TButton
        Left = 712
        Top = 64
        Width = 89
        Height = 25
        Caption = 'Save Detail'
        TabOrder = 3
        OnClick = BTN_SAVE_DTLBRGClick
      end
      object BTN_EDIT_DTLBRG: TButton
        Left = 712
        Top = 112
        Width = 89
        Height = 25
        Caption = 'Edit Detail'
        TabOrder = 4
        OnClick = BTN_EDIT_DTLBRGClick
      end
      object BTN_TUTUP_DTLBRG: TButton
        Left = 712
        Top = 160
        Width = 89
        Height = 25
        Caption = 'Close Form'
        TabOrder = 5
        OnClick = BTN_TUTUP_DTLBRGClick
      end
      object ED_VARIAN: TEdit
        Left = 544
        Top = 128
        Width = 161
        Height = 21
        TabOrder = 6
      end
      object DBG_DTLBRG: TDBGrid
        Left = 16
        Top = 256
        Width = 793
        Height = 225
        DataSource = DataModule_TokoBB.DS_Detail_Barang
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'kode_barang'
            Title.Alignment = taCenter
            Title.Caption = 'KODE BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_merk_barang'
            Title.Alignment = taCenter
            Title.Caption = 'NAMA MERK BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'varian'
            Title.Alignment = taCenter
            Title.Caption = 'JENIS VARIANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_barang'
            Title.Alignment = taCenter
            Title.Caption = 'JENIS BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Title.Alignment = taCenter
            Title.Caption = 'ISI KEMASAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stn'
            Title.Alignment = taCenter
            Title.Caption = 'SATUAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_brand'
            Title.Alignment = taCenter
            Title.Caption = 'COMPANY BRAND'
            Visible = True
          end>
      end
      object ED_CARIBRG: TEdit
        Left = 672
        Top = 480
        Width = 137
        Height = 21
        TabOrder = 8
        OnChange = ED_CARIBRGChange
      end
      object Button2: TButton
        Left = 688
        Top = 224
        Width = 121
        Height = 25
        Caption = 'PILIH BARANG'
        TabOrder = 9
        OnClick = Button2Click
      end
    end
    object TSS_DATABELI: TTabSheet
      Caption = 'Data Pembelian'
      ImageIndex = 3
      object Label25: TLabel
        Left = 0
        Top = 56
        Width = 102
        Height = 16
        Caption = 'Search By Faktur'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label26: TLabel
        Left = 272
        Top = 16
        Width = 229
        Height = 27
        Caption = 'History Data Pembelian'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button1: TButton
        Left = 792
        Top = 48
        Width = 97
        Height = 25
        Caption = 'Back To Transaksi'
        TabOrder = 0
        OnClick = Button1Click
      end
      object DBG_HISTORYBELI: TDBGrid
        Left = 0
        Top = 80
        Width = 889
        Height = 417
        DataSource = DataModule_TokoBB.DS_Detail_Pembelian
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fak_beli'
            Title.Caption = 'NO. FAKTUR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgl_beli'
            Title.Caption = 'TGL. PEMBELIAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kode_barang'
            Title.Caption = 'KODE BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_merk_barang'
            Title.Caption = 'NAMA MERK BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_barang'
            Title.Caption = 'JENIS BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jml_brg'
            Title.Caption = 'JML. BELI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'harga_beli'
            Title.Caption = 'HARGA BELI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_harga'
            Title.Caption = 'TOTAL HARGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Caption = 'STATUS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Title.Caption = 'ISI KEMASAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stn'
            Title.Caption = 'SATUAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'varian'
            Title.Caption = 'JENIS VARIANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'expired'
            Title.Caption = 'TGL. EXPIRED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_brand'
            Title.Caption = 'COMPANY BRAND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_spl'
            Title.Caption = 'NAMA SUPPLIER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'almt_spl'
            Title.Caption = 'ALAMAT SUPPLIER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telp_spl'
            Title.Caption = 'NO. TELP'
            Visible = True
          end>
      end
      object ED_CARIFAK: TEdit
        Left = 112
        Top = 56
        Width = 177
        Height = 21
        TabOrder = 2
        OnChange = ED_CARIFAKChange
      end
    end
    object TSS_STATUSBELI: TTabSheet
      Caption = 'Status Pembelian'
      ImageIndex = 4
      object Shape5: TShape
        Left = 10
        Top = 210
        Width = 870
        Height = 3
      end
      object GroupBox4: TGroupBox
        Left = 600
        Top = 24
        Width = 281
        Height = 177
        TabOrder = 0
        object Label27: TLabel
          Left = 8
          Top = 16
          Width = 64
          Height = 13
          Caption = 'Fakt_Number'
        end
        object BTN_KONF: TButton
          Left = 8
          Top = 136
          Width = 97
          Height = 25
          Caption = 'Konfirmasi'
          TabOrder = 0
          OnClick = BTN_KONFClick
        end
        object CMB_KONF: TComboBox
          Left = 80
          Top = 16
          Width = 193
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          OnChange = CMB_KONFChange
        end
        object RG_KONFIRMASI: TRadioGroup
          Left = 8
          Top = 64
          Width = 265
          Height = 49
          Caption = 'Select Option Confirmasi'
          Columns = 2
          Items.Strings = (
            'Confirmasi All '
            'Confirmasi One By One')
          TabOrder = 2
        end
        object BTN_KEMBALI: TButton
          Left = 160
          Top = 136
          Width = 113
          Height = 25
          Caption = 'Back To Stock Menu'
          TabOrder = 3
          OnClick = BTN_KEMBALIClick
        end
      end
      object DBG_BELI: TDBGrid
        Left = 8
        Top = 32
        Width = 577
        Height = 169
        DataSource = DataModule_TokoBB.DS_Pembelian
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fak_beli'
            Title.Alignment = taCenter
            Title.Caption = 'NO. FAKTUR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgl_beli'
            Title.Alignment = taCenter
            Title.Caption = 'TGL. PEMBELIAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kode_spl'
            Title.Alignment = taCenter
            Title.Caption = 'KODE SUPPLIER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_spl'
            Title.Alignment = taCenter
            Title.Caption = 'NAMA SUPPLIER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'almt_spl'
            Title.Alignment = taCenter
            Title.Caption = 'ALAMAT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telp_spl'
            Title.Alignment = taCenter
            Title.Caption = 'NO. TELP'
            Visible = True
          end>
      end
      object DBG_BELIDETAIL: TDBGrid
        Left = 8
        Top = 232
        Width = 873
        Height = 273
        DataSource = DataModule_TokoBB.DS_Detail_Pembelian
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fak_beli'
            Title.Alignment = taCenter
            Title.Caption = 'NO. FAKTUR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgl_beli'
            Title.Alignment = taCenter
            Title.Caption = 'TGL. PEMBELIAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_merk_barang'
            Title.Alignment = taCenter
            Title.Caption = 'NAMA MERK BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_barang'
            Title.Alignment = taCenter
            Title.Caption = 'JENIS BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'varian'
            Title.Alignment = taCenter
            Title.Caption = 'JENIS VARIANT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Title.Alignment = taCenter
            Title.Caption = 'ISI KEMASAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stn'
            Title.Alignment = taCenter
            Title.Caption = 'SATUAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'expired'
            Title.Alignment = taCenter
            Title.Caption = 'TGL. EXPIRED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_brand'
            Title.Alignment = taCenter
            Title.Caption = 'COMPANY BRAND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_spl'
            Title.Alignment = taCenter
            Title.Caption = 'NAMA SUPPLIER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jml_brg'
            Title.Alignment = taCenter
            Title.Caption = 'JML. PEMBELIAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'harga_beli'
            Title.Alignment = taCenter
            Title.Caption = 'HARGA BELI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_harga'
            Title.Alignment = taCenter
            Title.Caption = 'TOTAL HARGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'status'
            Title.Alignment = taCenter
            Title.Caption = 'STATUS'
            Visible = True
          end>
      end
    end
    object TSS_STOCKBRG: TTabSheet
      Caption = 'Stock Barang Ready'
      ImageIndex = 5
      object Label28: TLabel
        Left = 360
        Top = 16
        Width = 374
        Height = 27
        Caption = 'Daftar Item Barang Yang Stock Ready'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBG_STOCK: TDBGrid
        Left = -2
        Top = 80
        Width = 1089
        Height = 377
        DataSource = DataModule_TokoBB.DS_Stock
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'kode_barang'
            Title.Alignment = taCenter
            Title.Caption = 'KODE BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_merk_barang'
            Title.Alignment = taCenter
            Title.Caption = 'NAMA MERK BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_barang'
            Title.Alignment = taCenter
            Title.Caption = 'JENIS BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'varian'
            Title.Alignment = taCenter
            Title.Caption = 'VARIANT JENIS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_brand'
            Title.Alignment = taCenter
            Title.Caption = 'COMPANY BRAND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jml_stockbrg'
            Title.Alignment = taCenter
            Title.Caption = 'JUMLAH STOCK'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'harga_brg'
            Title.Alignment = taCenter
            Title.Caption = 'HARGA BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'qty'
            Title.Alignment = taCenter
            Title.Caption = 'ISI KEMASAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'stn'
            Title.Alignment = taCenter
            Title.Caption = 'SATUAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'expired'
            Title.Alignment = taCenter
            Title.Caption = 'TGL. EXPIRED'
            Visible = True
          end>
      end
      object BT_PILIHBRG: TButton
        Left = 16
        Top = 48
        Width = 121
        Height = 25
        Caption = 'SELECT BARANG'
        TabOrder = 1
        OnClick = BT_PILIHBRGClick
      end
      object BT_BACKTOJUAL: TButton
        Left = 848
        Top = 48
        Width = 121
        Height = 25
        Caption = 'BACK TO PENJUALAN'
        TabOrder = 2
        OnClick = BT_BACKTOJUALClick
      end
    end
    object TSS_DATAJUAL: TTabSheet
      Caption = 'Data Penjualan'
      ImageIndex = 6
      object Label29: TLabel
        Left = 8
        Top = 72
        Width = 102
        Height = 16
        Caption = 'Search By Faktur'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 344
        Top = 16
        Width = 257
        Height = 27
        Caption = 'List Daftar Data Penjualan'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'MS Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBG_DATAJUAL: TDBGrid
        Left = 8
        Top = 96
        Width = 953
        Height = 409
        DataSource = DataModule_TokoBB.DS_Detail_Penjualan
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'fak_jual'
            Title.Caption = 'NO. FAKTUR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'harga_brg'
            Title.Caption = 'HARGA BRG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jumlah'
            Title.Caption = 'JML JUAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total_harga'
            Title.Caption = 'TOTAL HRG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'varian'
            Title.Caption = 'VARIAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_merk_barang'
            Title.Caption = 'NAMA BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_brand'
            Title.Caption = 'BRAND COMPANY'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jenis_barang'
            Title.Caption = 'JENIS BARANG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgl_jual'
            Title.Caption = 'TGL PENJUALAN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nm_cust'
            Title.Caption = 'NAMA CUSTOMER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'almt_cust'
            Title.Caption = 'ALAMAT CUSTOMER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'telp_cust'
            Title.Caption = 'TELP CUSTOMER'
            Visible = True
          end>
      end
      object E_CARIFAK: TEdit
        Left = 120
        Top = 72
        Width = 177
        Height = 21
        TabOrder = 1
        OnChange = E_CARIFAKChange
      end
      object B_BACK: TButton
        Left = 312
        Top = 64
        Width = 129
        Height = 25
        Caption = 'Back To Transaksi'
        TabOrder = 2
        OnClick = B_BACKClick
      end
    end
  end
end
