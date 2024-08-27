import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'backup_cart_product_model.dart';
export 'backup_cart_product_model.dart';

class BackupCartProductWidget extends StatefulWidget {
  const BackupCartProductWidget({
    super.key,
    this.parameter1,
    this.parameter2,
    this.parameter3,
    this.parameter4,
    this.parameter5,
    this.parameter6,
  });

  final dynamic parameter1;
  final dynamic parameter2;
  final int? parameter3;
  final int? parameter4;
  final dynamic parameter5;
  final dynamic parameter6;

  @override
  State<BackupCartProductWidget> createState() =>
      _BackupCartProductWidgetState();
}

class _BackupCartProductWidgetState extends State<BackupCartProductWidget> {
  late BackupCartProductModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BackupCartProductModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().cartTotalPrice = FFAppState().cartTotalPrice +
          (((widget.parameter5!) -
                  ((widget.parameter5!) * ((widget.parameter6!) / 100))) *
              (widget.parameter4!));
      setState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      height: 127.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Theme(
                      data: ThemeData(
                        checkboxTheme: CheckboxThemeData(
                          visualDensity: VisualDensity.compact,
                          materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                        ),
                        unselectedWidgetColor:
                            FlutterFlowTheme.of(context).secondaryText,
                      ),
                      child: Checkbox(
                        value: _model.checkboxValue ??= true,
                        onChanged: (newValue) async {
                          setState(() => _model.checkboxValue = newValue!);
                        },
                        side: BorderSide(
                          width: 2,
                          color: FlutterFlowTheme.of(context).secondaryText,
                        ),
                        activeColor: FlutterFlowTheme.of(context).electricBlue2,
                        checkColor: FlutterFlowTheme.of(context).info,
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        'https://picsum.photos/seed/356/600',
                        width: 71.0,
                        height: 67.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 16.0, 0.0, 12.0),
                          child: Text(
                            widget.parameter2!.toString(),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  color: Colors.black,
                                  fontSize: functions.setFontSize(14.0),
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 10.0),
                          child: Text(
                            '제품 설명',
                            maxLines: 1,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  color: const Color(0xFFABACB5),
                                  fontSize: functions.setFontSize(12.0),
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Container(
                          width: 72.0,
                          height: 27.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(2.0),
                            border: Border.all(
                              color: const Color(0xFF90929D),
                              width: 1.0,
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FlutterFlowIconButton(
                                borderColor: const Color(0x00FFFFFF),
                                borderRadius: 30.0,
                                borderWidth: 1.0,
                                buttonSize: 24.0,
                                fillColor: const Color(0x00FFFFFF),
                                icon: const FaIcon(
                                  FontAwesomeIcons.minus,
                                  color: Color(0xFFC6C7CD),
                                  size: 10.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              Text(
                                widget.parameter4!.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'noto sans',
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                              FlutterFlowIconButton(
                                borderColor: const Color(0x00FFFFFF),
                                borderRadius: 30.0,
                                borderWidth: 0.0,
                                buttonSize: 24.0,
                                fillColor: const Color(0x00FFFFFF),
                                icon: FaIcon(
                                  FontAwesomeIcons.plus,
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  size: 10.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: const AlignmentDirectional(1.0, 1.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 18.0, 18.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(1.0, 1.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          formatNumber(
                            (widget.parameter5!) * (widget.parameter4!),
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.automatic,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: const Color(0xFFABACB5),
                                    fontSize: functions.setFontSize(10.0),
                                    letterSpacing: 0.0,
                                    decoration: TextDecoration.lineThrough,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          '원',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: const Color(0xFFABACB5),
                                    fontSize: functions.setFontSize(10.0),
                                    letterSpacing: 0.0,
                                    decoration: TextDecoration.lineThrough,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(1.0, 1.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          widget.parameter6!.toString(),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: const Color(0xFF08CEED),
                                    fontSize: functions.setFontSize(10.0),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          '%',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: const Color(0xFF08CEED),
                                    fontSize: functions.setFontSize(10.0),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                        Text(
                          formatNumber(
                            ((widget.parameter5!) -
                                    ((widget.parameter5!) *
                                        ((widget.parameter6!) / 100))) *
                                (widget.parameter4!),
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.automatic,
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    fontSize: functions.setFontSize(16.0),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
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
