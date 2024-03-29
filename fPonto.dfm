object frmLembretesPonto: TfrmLembretesPonto
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = 'Lembretes do ponto'
  ClientHeight = 172
  ClientWidth = 194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 194
    Height = 172
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dxLayoutSkinLookAndFeel1
    object edtRetorno: TdxDateTimeWheelPicker
      Left = 63
      Top = 89
      EditValue = 0.5625d
      Properties.Wheels = [pwHour, pwMinute]
      Style.HotTrack = False
      TabOrder = 2
      Height = 34
      Width = 121
    end
    object edtSaida: TdxDateTimeWheelPicker
      Left = 63
      Top = 129
      EditValue = 0.75d
      Properties.Wheels = [pwHour, pwMinute]
      Style.HotTrack = False
      TabOrder = 3
      Height = 33
      Width = 121
    end
    object edtIntervalo: TdxDateTimeWheelPicker
      Left = 63
      Top = 50
      EditValue = 0.5d
      Properties.Wheels = [pwHour, pwMinute]
      Style.HotTrack = False
      TabOrder = 1
      Height = 33
      Width = 121
    end
    object edtEntrada: TdxDateTimeWheelPicker
      Left = 63
      Top = 10
      EditValue = 0.320833333333333d
      Properties.Wheels = [pwHour, pwMinute]
      Style.HotTrack = False
      TabOrder = 0
      Height = 34
      Width = 121
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Retorno:'
      Control = edtRetorno
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Sa'#237'da:'
      Control = edtSaida
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Intervalo:'
      Control = edtIntervalo
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Entrada:'
      Control = edtEntrada
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object Tray1: TTrayIcon
    Icons = cxImages1
    IconIndex = 2
    PopupMenu = Popup1
    Visible = True
    Left = 11
    Top = 113
  end
  object dxAlert1: TdxAlertWindowManager
    OptionsAnimate.AlphaBlendValue = 160
    OptionsAnimate.HidingAnimationTime = 500
    OptionsAnimate.HotTrackAlphaBlendValue = 160
    OptionsAnimate.HotTrackFadeInTime = 50
    OptionsAnimate.HotTrackFadeOutTime = 500
    OptionsAnimate.ShowingAnimationTime = 50
    OptionsBehavior.CloseOnRightClick = False
    OptionsBehavior.DisplayTime = 3000
    OptionsButtons.Buttons = <
      item
        Hint = 'J'#225'!'
        ImageIndex = 0
      end
      item
        Hint = 'Ainda n'#227'o.'
        ImageIndex = 1
      end>
    OptionsButtons.Images = cxImages1
    OptionsMessage.Caption.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Caption.Font.Color = clWindowText
    OptionsMessage.Caption.Font.Height = -13
    OptionsMessage.Caption.Font.Name = 'Tahoma'
    OptionsMessage.Caption.Font.Style = [fsBold]
    OptionsMessage.Text.Font.Charset = DEFAULT_CHARSET
    OptionsMessage.Text.Font.Color = clWindowText
    OptionsMessage.Text.Font.Height = -11
    OptionsMessage.Text.Font.Name = 'Tahoma'
    OptionsMessage.Text.Font.Style = []
    OptionsNavigationPanel.Font.Charset = DEFAULT_CHARSET
    OptionsNavigationPanel.Font.Color = clWindowText
    OptionsNavigationPanel.Font.Height = -11
    OptionsNavigationPanel.Font.Name = 'Tahoma'
    OptionsNavigationPanel.Font.Style = []
    WindowMaxCount = 1
    OnButtonClick = dxAlert1ButtonClick
    Left = 9
    Top = 10
    PixelsPerInch = 96
  end
  object cxStore1: TcxPropertiesStore
    Components = <
      item
        Component = edtEntrada
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = edtIntervalo
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = edtRetorno
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = edtSaida
        Properties.Strings = (
          'EditValue')
      end
      item
        Component = Owner
        Properties.Strings = (
          'Left'
          'Top')
      end>
    StorageName = 'LembretesPonto'
    StorageType = stRegistry
    Left = 72
    Top = 60
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = timerTimer
    Left = 9
    Top = 60
  end
  object cxImages1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 655432
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
          72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
          3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
          D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
          234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
          40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
          2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
          D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
          867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
          48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
          48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
          0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
          104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
          6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
          DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
          969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
          3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
          53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
          A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
          3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
          FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
          ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
          718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
          0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
          990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
          0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
          784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
          A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
          B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
          62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C650043616E63656C3B53746F703B457869743B
          426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
          18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
          3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
          8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
          E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
          A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
          673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
          5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
          D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
          3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
          D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
          2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
          CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
          CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
          2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
          2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
          B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
          82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
          17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
          F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
          33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
          097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
          646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
          266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
          2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
          72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
          2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
          CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
          1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
          01D589CC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000D744558745469746C65005265706F72743B0C72A51900
          00023B49444154785E6D90CD4B54511C869F3B633683329442A0C4B8305B3489
          14ADA27FA07DAB8AA05D1881462E82425A19A411F401B508DAB4AA956DA48511
          B6310225881A8C043F2AC471086DEEF9F89D5F339711AE312F3C9C2FCEC37B4E
          9BAA124511A9440DE6D6FD6850266BC6C59FBFAD3DBC71F6C8ADE6198034D07A
          DA6866E145F7A8381D11D1A2973656D796D9A69B9A955C362B63D3E307C7BC73
          C456D7B7FE84A7C3CF6A7701BB2B886C1C467A86AE155F9BABD48C50FBEDA9D9
          2AB115AC85C5BE0F7C5F5AE5C9A9EBBD1FDF2F5D011EEC15182D1E3E7999B793
          5F714EB03EE0BCE044101F9010081228967A999F5DEA01F603A40401A4CAC5BE
          750687062997CB78EFE9ECECA4503850A7C0CCCC0CD6188CCB02EC4B0BB2C604
          D46F222A944A25FAFBFB595959A152A9D0DEDE4E3E9F278A201B19C44972372D
          C8B85851B7410801805C2EC7C0C000D65AAAD56AB21F0264A9254F02B27B1A58
          ABA8FD89842E00265E7DC1388F7592BC7FE2D289A441E40D229A6A901248BC86
          F8020037CF1DE3FFA82ADEC588D0BA81C43F11390AC0F8CB4562EB31759C171E
          0F9F4E3ED559B72BC8A40519EF14315B881700EE9C1F6AD120E08D27B46AE09C
          E2EB029F9CB68E48C0D98084560D3C88D9E150AECCD4FD298284E4E74504554D
          E63D1DCB7817923510A505C15ADD5998DFEA38737C1A6F1CDE4982788F068040
          2603DE65301E0BD8B4A0F663233CDF79F7EBC2A739BA824208A00D1494644CD8
          366C2F57F40DB09916FC7D342BB7817B40BE29CE348952A302315069C23F585F
          7BC0B3D9E8B90000000049454E44AE426082}
      end>
  end
  object dxSkin1: TdxSkinController
    NativeStyle = False
    SkinName = 'Office2010Silver'
    Left = 72
    Top = 112
  end
  object dxLayout1: TdxLayoutLookAndFeelList
    Left = 136
    Top = 10
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
      PixelsPerInch = 96
    end
  end
  object Popup1: TPopupMenu
    Left = 136
    Top = 59
    object Mostrar1: TMenuItem
      Caption = '&Mostrar'
      OnClick = Mostrar1Click
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
      OnClick = Sair1Click
    end
  end
end
