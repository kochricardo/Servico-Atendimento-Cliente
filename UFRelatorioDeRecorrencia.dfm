object FRelatorioDeRecorrencia: TFRelatorioDeRecorrencia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'SAC - Relatorio de Recorr'#234'ncia'
  ClientHeight = 137
  ClientWidth = 401
  Color = clWindow
  Ctl3D = False
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object StatusBar1: TStatusBar
    Left = 0
    Top = 118
    Width = 401
    Height = 19
    Panels = <>
    ExplicitLeft = 424
    ExplicitTop = 224
    ExplicitWidth = 0
  end
  object gbxFiltro: TGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 395
    Height = 112
    Align = alClient
    Caption = '  Filtros    '
    TabOrder = 1
    ExplicitLeft = 128
    ExplicitTop = 64
    ExplicitWidth = 185
    ExplicitHeight = 105
    object gbxFiltroPeriodo: TGroupBox
      Left = 11
      Top = 16
      Width = 227
      Height = 83
      Caption = '  Per'#237'odo  '
      TabOrder = 0
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 63
        Height = 16
        Caption = 'Data Inicial'
      end
      object Label3: TLabel
        Left = 120
        Top = 24
        Width = 57
        Height = 16
        Caption = 'Data Final'
      end
      object dpkDataInicial: TDateTimePicker
        Left = 16
        Top = 43
        Width = 97
        Height = 24
        Date = 41568.472339768520000000
        Time = 41568.472339768520000000
        TabOrder = 0
      end
      object dpkDataFinal: TDateTimePicker
        Left = 119
        Top = 43
        Width = 97
        Height = 24
        Date = 41568.472422407410000000
        Time = 41568.472422407410000000
        TabOrder = 1
      end
    end
    object btnProcessar: TBitBtn
      Left = 254
      Top = 29
      Width = 123
      Height = 30
      Caption = '&Processar'
      DoubleBuffered = True
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        20000000000000090000C40E0000C40E00000000000000000000000000000000
        000026603C050000001900000021000000210000002100000021000000210000
        0021000000210000002100000021000000210000002100000021000000210000
        00210000002100000021000000210A170F132F6C460300000000000000000000
        00000B1E120D09411F9109421EA009421EA109421EA109421EA109421EA10942
        1EA109421EA109421EA109421EA109421EA109421EA109421EA109421EA10942
        1EA109421EA109421EA109421EA00731176E1B3F290900000000000000000000
        00000B1E131020934AFB47BC70FE46BB6FFE43BA6DFF41B96BFE43BA6DFE41BA
        6CFF41B96CFE40B96AFF3DB869FE3FB96AFE42BA6CFE44BA6DFF48BC71FE40B9
        6BFE45BB6EFF46BB6FFE47BC70FE0E632EC01B402A0A00000000000000000000
        00000C1F131024974DFF53C77DFF4FC27AFF6BCC90FFC8ECD5FF6ACC8EFFC4EB
        D3FF8DD7A9FFD2EFDDFFCDEDDAFFC7EBD4FF6BCC8FFFCCEDD9FFC2E9D1FFD3F0
        DEFF4AC176FF4FC27AFF55CA7EFF0E632DC41C422B0A00000000000000000000
        00000F21161024974DFF4FC47BFE49BB76FE4ABC78FF8ED4AAFEB9E6CAFEABE0
        C0FF47BB75FECEEDDAFF3CB76DFE45BA73FE46BA74FE4BBD78FF71CC94FEDBF2
        E4FE43B972FF49BB76FE53C87DFE0E632DC42346310A00000000000000000000
        00001222191024974DFF4DC079FE43B474FE42B373FF67C28EFEE3F4EAFE6CC5
        93FF3AB06DFECDEBDAFF3BB16EFE43B474FE3FB271FEBAE4CCFFAFE0C4FE73C7
        98FE41B372FF43B374FE52C77CFE0E632DC42748350A00000000000000000000
        000015241B1024974DFF4ABC78FF3DAC71FF48B179FFAFDDC4FF80C8A2FFCBE9
        D9FF52B680FFCBE9D9FF35A96BFF3DAC71FF37A96CFFC7E7D6FF5DBA87FF61BC
        8BFF3BAB70FF3DAB71FF51C57CFF0E632DC42C4B380A00000000000000000000
        000019281F1024974DFF46B876FE37A46EFE49AD7BFF7CC4A0FE3FA974FE73BF
        99FF5FB68AFE7CC3A0FF33A36BFE37A56EFE34A36CFE79C29EFF8CCBACFE88C9
        A9FE35A46CFF36A46DFE4FC37BFE0E632DC433523F0A00000000000000000000
        00001D2B23101C9548FF3DB46FFE2B9D65FE2B9D65FF2A9C65FE2B9D65FE2A9D
        65FF2A9C65FE2A9C65FF2B9D65FE2C9D66FE2B9D66FE2A9D64FF299C64FE2A9C
        64FE2B9D66FF2B9C65FE46C074FE086229C43756440A00000000000000000000
        0000202C2510CAC6C9FFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
        FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFEFEFFFEFEFEFFFEFEFEFF8A8689C43D57480A00000000000000000000
        0000232C2710C5C5C5FFFCFCFCFEF9F9F9FEFAFAF9FFFCFBFBFEFCFCFCFEFDFD
        FDFFFCFCFCFEFDFDFDFFFCFCFCFEFDFDFDFE9FCDAFFE81BE98FF82BE98FE80BD
        96FEFDFCFDFFF9F9F9FEFDFDFDFE858585C442594B0A00000000000000000000
        0000252D2910C5C5C5FFFAFAFAFFF6F6F6FFF8F8F8FF9ECBAFFF439E64FF439E
        65FF439E65FF439E65FF449F66FF459F66FF40B169FF41B86BFF44BA6EFF128C
        3EFFFDFAFDFFF6F6F6FFFCFCFCFF858585C4465A4E0A00000000000000000000
        0000292E2B10C5C5C5FFF8F8F8FEF3F2F2FEF5F4F4FF9EC9ADFE4CB572FE58CA
        82FF52C77DFE53C87EFF3CB066FE38AB63FE4DC179FE54C17DFF3CA764FE99CC
        ACFEF9F6F7FFF3F2F2FEFBFBFBFE858585C44B5B520A00000000000000000000
        00002B2F2D10C5C5C5FFF7F6F6FEF0EFEFFEF1F0EFFFF5F2F3FE9DC7ACFE42AE
        6AFF57C482FE36A962FF34A660FE48BB77FE59C284FE2E9D58FF2D9855FE168B
        41FE9DC8ABFFF2F0F0FEFBFAFAFE858585C44F5C550A00000000000000000000
        00002E302E10C5C5C5FFF5F5F5FEEDEDECFEEDEDECFFEDEDECFEF2EFF0FE98C6
        A9FF21934CFE32A460FF44B674FE5BBF85FE36A05FFEBFD8CAFFBDD6C6FEBCD6
        C6FEC8DACDFFEFEDEDFEFAFAFAFE858585C4555E580A00000000000000000000
        000030303010C5C5C5FFF4F3F3FFEAE9E8FFEAE9E8FFEAE9E8FFEFEBECFF95C3
        A5FF2C9F5CFF3EB072FF59BA84FF43A56AFF178D45FFCCDBD0FFEEEBEBFFEAE9
        E8FFEAE9E8FFE9E9E7FFF9F9F9FF858585C45C615D0A00000000000000000000
        000030303010C5C5C5FFF2F1F0FEE6E6E4FEE7E6E5FFECE8E9FE99C3A6FE2298
        55FF37A86DFE5FBA8BFF4FAA73FE48AC74FE3AAB70FE339B5EFFB6D0BDFEEAE7
        E7FEE7E6E5FFE6E5E3FEF8F8F7FE858585C45B605D0A00000000000000000000
        000030303010C5C5C5FFF0F0EFFEE3E2E1FEE5E4E3FF94BFA3FE72BA91FE8ECE
        AEFF8ECEAEFE42A267FF98C2A5FE5CB17FFE8ECDAEFE8CCCABFF61AF7FFEBFD2
        C4FEE2E2E0FFE1E1DFFEF7F7F6FE858585C45C615E0A00000000000000000000
        0000302F2F10C5C5C5FFEEEEEDFFE0DFDDFFE2E0E0FF91BDA0FF3D985EFF3D98
        5DFF3B975BFFC0D1C4FFE6E2E3FF93BDA0FF3C975CFF3D995EFF3C995DFFBED5
        C6FFEBEBEBFFEAEAEAFFF9F9F9FF858585C45E625F0A00000000000000000000
        00002F2F2F10C5C5C5FFEDECEBFEDCDBDAFEDEDCDBFFE0DDDDFEE3DEDFFEE3DF
        E0FFE2DEDFFEE0DDDCFFDDDCDBFEE0DDDDFEE3DEDFFEE9E6E6FFE1DFE0FED2D1
        D2FED1D1D1FFD1D1D1FEEBEBEBFE9C9E9DB68E94900400000000000000000000
        00002F2F2F10C5C5C5FFEBEBE9FED9D8D7FEDAD9D7FFDAD9D7FEDAD9D7FEDAD9
        D7FFDAD9D7FEDAD9D7FFDAD9D7FEDAD9D7FEDAD9D7FEE2E1DFFFD6D6D6FEE6E6
        E5FEF1F0F0FFF3F3F3FEC8C8C8ECC0C6C22D0000000000000000000000000000
        00002F2F2F10C5C5C5FFE9E9E8FFD6D4D2FFD6D5D3FFD6D5D3FFD6D5D3FFD6D5
        D3FFD6D5D3FFD6D5D3FFD6D5D3FFD6D5D3FFD6D5D3FFDFDEDCFFD6D6D6FFE1E1
        E1FFF0F0F0FBC5C7C5CBBAC5BE2C000000000000000000000000000000000000
        00002F2F2F0CC5C5C5FFF3F2F2FEE8E7E6FEE8E8E7FFE8E8E7FEE8E8E7FEE8E8
        E7FFE8E8E7FEE8E8E7FFE8E8E7FEE8E8E7FEE8E8E7FEEDEDECFFE9E9E9FEEBEB
        EBFEC3C5C4B7B8C3BC3100000000000000000000000000000000000000000000
        0000989A9804B6B6B6D0C5C5C5FEC5C5C5FEC5C5C5FFC5C5C5FEC5C5C5FEC5C5
        C5FFC5C5C5FEC5C5C5FFC5C5C5FEC5C5C5FEC5C5C5FEC5C5C5FFC5C5C5FEBEBE
        BECFC0C8C2210000000000000000000000000000000000000000}
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = btnProcessarClick
    end
    object btnLimpar: TBitBtn
      Left = 254
      Top = 65
      Width = 123
      Height = 30
      Caption = '&Limpar Filtros'
      DoubleBuffered = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 2
      OnClick = btnLimparClick
    end
  end
end
