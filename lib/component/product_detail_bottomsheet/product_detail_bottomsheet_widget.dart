import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/component/custom_counting_box/custom_counting_box_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'product_detail_bottomsheet_model.dart';
export 'product_detail_bottomsheet_model.dart';

class ProductDetailBottomsheetWidget extends StatefulWidget {
  const ProductDetailBottomsheetWidget({
    super.key,
    this.maker,
    this.productName,
    this.price,
    this.discount,
    this.options,
    this.productUid,
  });

  final String? maker;
  final String? productName;
  final int? price;
  final double? discount;
  final dynamic options;
  final String? productUid;

  @override
  State<ProductDetailBottomsheetWidget> createState() =>
      _ProductDetailBottomsheetWidgetState();
}

class _ProductDetailBottomsheetWidgetState
    extends State<ProductDetailBottomsheetWidget> {
  late ProductDetailBottomsheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailBottomsheetModel());

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
      height: 517.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: 90.0 * (math.pi / 180),
                child: FlutterFlowIconButton(
                  borderColor: const Color(0x00FFFFFF),
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  fillColor: const Color(0x00FFFFFF),
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFC6C7CD),
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Text(
                      '[${widget.maker}]',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            fontSize: functions.setFontSize(12.0),
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 0.0, 12.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.productName,
                      '1',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          fontSize: functions.setFontSize(16.0),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: Text(
                    '${formatNumber(
                      widget.price,
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.automatic,
                    )}원',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: const Color(0xFFABACB5),
                          fontSize: functions.setFontSize(12.0),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          decoration: TextDecoration.lineThrough,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(12.0, 2.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '${widget.discount?.toString()}%',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: FlutterFlowTheme.of(context).electricBlue2,
                          fontSize: functions.setFontSize(18.0),
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                  Expanded(
                    child: Text(
                      '${formatNumber(
                        (widget.price!) -
                            ((widget.price!) * ((widget.discount!) / 100)),
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                      )}원',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            fontSize: functions.setFontSize(20.0),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                      child: wrapWithModel(
                        model: _model.customCountingBoxModel,
                        updateCallback: () => setState(() {}),
                        child: const CustomCountingBoxWidget(),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(width: 12.0)),
              ),
            ),
          ),
          const Divider(
            thickness: 1.0,
            color: Color(0xFFF4F4F5),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Hello World',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'noto sans',
                      fontSize: functions.setFontSize(12.0),
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
          const Divider(
            thickness: 1.0,
            color: Color(0xFFF4F4F5),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '더 많은 옵션 보기',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'noto sans',
                      fontSize: functions.setFontSize(12.0),
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                '개당 용량 X 수량',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'noto sans',
                      color: const Color(0xFF5D5F69),
                      fontSize: functions.setFontSize(10.0),
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: FlutterFlowChoiceChips(
                  options: (getJsonField(
                    widget.options,
                    r'''$''',
                    true,
                  ) as List)
                      .map<String>((s) => s.toString())
                      .toList()
                      .map((label) => ChipData(label))
                      .toList(),
                  onChanged: (val) => setState(
                      () => _model.choiceChipsValue = val?.firstOrNull),
                  selectedChipStyle: ChipStyle(
                    backgroundColor: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: FlutterFlowTheme.of(context).electricBlue2,
                          fontSize: functions.setFontSize(12.0),
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    iconColor: FlutterFlowTheme.of(context).primaryText,
                    iconSize: 18.0,
                    elevation: 0.0,
                    borderColor: FlutterFlowTheme.of(context).electricBlue2,
                    borderWidth: 1.0,
                    borderRadius: BorderRadius.circular(2.0),
                  ),
                  unselectedChipStyle: ChipStyle(
                    backgroundColor: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: const Color(0xFF2E2E33),
                          fontSize: functions.setFontSize(12.0),
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                    iconColor: FlutterFlowTheme.of(context).secondaryText,
                    iconSize: 18.0,
                    elevation: 0.0,
                    borderColor: const Color(0xFF757884),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  chipSpacing: 12.0,
                  rowSpacing: 12.0,
                  multiselect: false,
                  alignment: WrapAlignment.start,
                  controller: _model.choiceChipsValueController ??=
                      FormFieldController<List<String>>(
                    [],
                  ),
                  wrapped: false,
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 4.0,
            color: Color(0xFFE2E3E6),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowRadioButton(
                    options: ['1개 ', '2개'].toList(),
                    onChanged: (val) => setState(() {}),
                    controller: _model.radioButtonValueController ??=
                        FormFieldController<String>(null),
                    optionHeight: 24.0,
                    textStyle:
                        FlutterFlowTheme.of(context).labelMedium.override(
                              fontFamily: 'noto sans',
                              color: Colors.black,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                    buttonPosition: RadioButtonPosition.left,
                    direction: Axis.vertical,
                    radioButtonColor:
                        FlutterFlowTheme.of(context).electricBlue2,
                    inactiveRadioButtonColor: const Color(0xFFE2E3E6),
                    toggleable: false,
                    horizontalAlignment: WrapAlignment.start,
                    verticalAlignment: WrapCrossAlignment.start,
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: 52.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: '장바구니 담기',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'noto sans',
                          color: Colors.white,
                          fontSize: functions.setFontSize(14.0),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    await CartTable().insert({
                      'updated_at':
                          supaSerialize<DateTime>(getCurrentTimestamp),
                      'product_uid': widget.productUid,
                      'quantity': _model.customCountingBoxModel.count,
                      'total_price': widget.price?.toDouble(),
                      'created_at':
                          supaSerialize<DateTime>(getCurrentTimestamp),
                      'status': '',
                      'user_uid': currentUserUid,
                    });

                    context.pushNamed(
                      'cart',
                      queryParameters: {
                        'userUid': serializeParam(
                          currentUserUid,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: '바로구매',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'noto sans',
                          color: Colors.white,
                          fontSize: functions.setFontSize(14.0),
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts: false,
                        ),
                    elevation: 3.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(const SizedBox(width: 4.0)),
            ),
          ),
        ],
      ),
    );
  }
}
