import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'product_q_n_a_model.dart';
export 'product_q_n_a_model.dart';

class ProductQNAWidget extends StatefulWidget {
  const ProductQNAWidget({
    super.key,
    bool? isSolved,
    required this.userId,
    required this.createdAt,
    required this.questionDetails,
  }) : isSolved = isSolved ?? false;

  final bool isSolved;
  final String? userId;
  final DateTime? createdAt;
  final String? questionDetails;

  @override
  State<ProductQNAWidget> createState() => _ProductQNAWidgetState();
}

class _ProductQNAWidgetState extends State<ProductQNAWidget> {
  late ProductQNAModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductQNAModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(1.0, 0.0, 0.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 15.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (!widget.isSolved)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: SvgPicture.asset(
                          'assets/images/Property_1=False.svg',
                          width: 53.0,
                          height: 24.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    if (widget.isSolved)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(4.0),
                        child: SvgPicture.asset(
                          'assets/images/Property_1=True.svg',
                          width: 53.0,
                          height: 24.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.userId,
                          '1',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'noto sans',
                              color: const Color(0xFF757884),
                              fontSize: functions.setFontSize(10.0),
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                    Text(
                      '|',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            color: const Color(0xFF757884),
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: Text(
                        dateTimeFormat(
                          "d/M/y",
                          widget.createdAt,
                          locale: FFLocalizations.of(context).languageCode,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'noto sans',
                              color: const Color(0xFF757884),
                              fontSize: functions.setFontSize(10.0),
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: const BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          valueOrDefault<String>(
                            widget.questionDetails,
                            '1',
                          ).maybeHandleOverflow(
                            maxChars: 20,
                            replacement: '…',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: Colors.black,
                                    fontSize: functions.setFontSize(14.0),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ),
                      if (!_model.isExpanded)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.isExpanded = !_model.isExpanded;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Color(0xFFC6C7CD),
                              size: 24.0,
                            ),
                          ),
                        ),
                      if (_model.isExpanded)
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.isExpanded = !_model.isExpanded;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_up,
                              color: Color(0xFFC6C7CD),
                              size: 24.0,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xFFE2E3E6),
              ),
              if (_model.isExpanded)
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 0.0, 12.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 1.0),
                            child: Text(
                              '판매자 답변',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'noto sans',
                                    color: const Color(0xFF08CEED),
                                    fontSize: functions.setFontSize(14.0),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 22.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.94,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF4F4F5),
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 1.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 12.0),
                                  child: Text(
                                    '판매자 답변',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'noto sans',
                                          color: const Color(0xFF2E2E33),
                                          fontSize: functions.setFontSize(14.0),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
