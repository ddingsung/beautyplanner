import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main_tutorial_bottom_sheet_model.dart';
export 'main_tutorial_bottom_sheet_model.dart';

class MainTutorialBottomSheetWidget extends StatefulWidget {
  const MainTutorialBottomSheetWidget({super.key});

  @override
  State<MainTutorialBottomSheetWidget> createState() =>
      _MainTutorialBottomSheetWidgetState();
}

class _MainTutorialBottomSheetWidgetState
    extends State<MainTutorialBottomSheetWidget> {
  late MainTutorialBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainTutorialBottomSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: MediaQuery.sizeOf(context).height * 1.0,
      decoration: const BoxDecoration(
        color: Color(0xE8161618),
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    icon: const Icon(
                      Icons.close,
                      color: Color(0xFFABACB5),
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 430.0,
                decoration: const BoxDecoration(),
                child: Stack(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.96,
                            height: 360.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 10.0, 0.0),
                                        child: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.78,
                                          height: 42.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .blue98,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Text(
                                                '오늘은 어떤 뷰티 플랜을 원하시나요?',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      fontSize: functions
                                                          .setFontSize(16.0),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 12.0, 0.0, 12.0),
                                      child: Text(
                                        'AI 뷰티 플래너 뷰리가\n길동님께 딱 맞는 플랜을 추천해드릴게요!',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '중복 선택 가능',
                                      textAlign: TextAlign.center,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFFABACB5),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 22.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 240.0,
                                        height: 82.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        child: FlutterFlowChoiceChips(
                                          options: const [
                                            ChipData('다이어트'),
                                            ChipData('피부고민'),
                                            ChipData('체형교정'),
                                            ChipData('헤어'),
                                            ChipData('패션'),
                                            ChipData('식품')
                                          ],
                                          onChanged: (val) => setState(() =>
                                              _model.choiceChipsValues = val),
                                          selectedChipStyle: ChipStyle(
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .electricBlue2,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      color: Colors.white,
                                                      fontSize: functions
                                                          .setFontSize(12.0),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryText,
                                            iconSize: 0.0,
                                            labelPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 8.0, 10.0, 8.0),
                                            elevation: 0.0,
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          unselectedChipStyle: ChipStyle(
                                            backgroundColor: const Color(0x00000000),
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      color: const Color(0xFFABACB5),
                                                      fontSize: functions
                                                          .setFontSize(12.0),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                            iconColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            iconSize: 0.0,
                                            labelPadding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 8.0, 10.0, 8.0),
                                            elevation: 0.0,
                                            borderColor: const Color(0xFFABACB5),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                          ),
                                          chipSpacing: 10.0,
                                          rowSpacing: 12.0,
                                          multiselect: true,
                                          initialized:
                                              _model.choiceChipsValues != null,
                                          alignment: WrapAlignment.spaceAround,
                                          controller: _model
                                                  .choiceChipsValueController ??=
                                              FormFieldController<List<String>>(
                                            [],
                                          ),
                                          wrapped: true,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 26.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                              'recommended_plan_page');
                                        },
                                        text: '뷰티플랜 추천 받으러 가기',
                                        options: FFButtonOptions(
                                          width: 250.0,
                                          height: 56.0,
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Colors.white,
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'noto sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .electricBlue2,
                                                fontSize:
                                                    functions.setFontSize(16.0),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
                                              ),
                                          elevation: 0.0,
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .electricBlue2,
                                            width: 2.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: Image.asset(
                          'assets/images/Tooltip_Arrow_(1).png',
                          width: 19.0,
                          height: 32.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 28.0, 16.0, 0.0),
                    child: SizedBox(
                      width: 99.0,
                      height: 177.0,
                      child: Stack(
                        children: [
                          Container(
                            width: 93.0,
                            height: 169.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.network(
                                  'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxiZWF1dGlmdWwlMjBvY2VhbnxlbnwwfHx8fDE3MTkzMzU4Njl8MA&ixlib=rb-4.0.3&q=80&w=1080',
                                ).image,
                              ),
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(60.0),
                              ),
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('product_list');
                            },
                            child: Container(
                              width: 93.0,
                              height: 169.0,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0x00FFFFFF),
                                    Color(0x9F61E5FA)
                                  ],
                                  stops: [0.0, 0.9],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16.0),
                                  bottomRight: Radius.circular(16.0),
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(60.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                52.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/Frame_971.svg',
                                width: 47.0,
                                height: 48.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                65.0, 12.0, 10.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: Image.asset(
                                'assets/images/u8uhe_.png',
                                width: 24.0,
                                height: 24.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 93.0, 40.0, 52.0),
                            child: Text(
                              'SHOP',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'noto sans',
                                    color: Colors.white,
                                    fontSize: functions.setFontSize(16.0),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                67.0, 95.0, 14.22, 54.0),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 22.0,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 117.0, 15.0, 28.0),
                            child: Text(
                              '화장품, 패션부터\n이너뷰티까지',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'noto sans',
                                    fontSize: functions.setFontSize(10.0),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 0.0),
                    child: SizedBox(
                      width: 99.0,
                      height: 177.0,
                      child: Stack(
                        children: [
                          Container(
                            width: 93.0,
                            height: 169.0,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(16.0),
                                bottomRight: Radius.circular(16.0),
                                topLeft: Radius.circular(16.0),
                                topRight: Radius.circular(60.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 0.0),
                    child: SizedBox(
                      width: 99.0,
                      height: 177.0,
                      child: Stack(
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-8.83, 17.13),
                            child: Container(
                              width: 93.0,
                              height: 169.0,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16.0),
                                  bottomRight: Radius.circular(16.0),
                                  topLeft: Radius.circular(16.0),
                                  topRight: Radius.circular(60.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 6.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Property_1=False_(2).png',
                  width: 62.0,
                  height: 56.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 0.5,
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(-0.17, 0.45),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.asset(
                        'assets/images/Tooltip_Arrow_(2).png',
                        height: 24.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.11, 0.8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/Tooltip_Arrow_(3).png',
                        height: 44.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.52, 0.77),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '나만의 뷰티 플랜이!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(60.0, 40.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '나한테 딱 맞는 ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Text(
                            '뷰티 플랜 ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  color: FlutterFlowTheme.of(context)
                                      .electricBlue2,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Text(
                            '만들기!',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  color: Colors.white,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.01, 0.56),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '쉽고 빠른 쇼핑',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'noto sans',
                                color:
                                    FlutterFlowTheme.of(context).electricBlue2,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                        ),
                        Text(
                          '을!',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.5, 0.67),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'AI 뷰티 플래너',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.5, 0.72),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '뷰리를 터치',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'noto sans',
                                color:
                                    FlutterFlowTheme.of(context).electricBlue2,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                        ),
                        Text(
                          '뷰티 ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          '하면',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          '카테고리별로',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'noto sans',
                                color:
                                    FlutterFlowTheme.of(context).electricBlue2,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                useGoogleFonts: false,
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
