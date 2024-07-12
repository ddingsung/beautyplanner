import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'order_history_widget_model.dart';
export 'order_history_widget_model.dart';

class OrderHistoryWidgetWidget extends StatefulWidget {
  const OrderHistoryWidgetWidget({
    super.key,
    required this.day,
    required this.productName,
    required this.orderId,
    required this.payment,
    required this.totalPrice,
    required this.shippingStatus,
  });

  final DateTime? day;
  final String? productName;
  final int? orderId;
  final String? payment;
  final double? totalPrice;
  final String? shippingStatus;

  @override
  State<OrderHistoryWidgetWidget> createState() =>
      _OrderHistoryWidgetWidgetState();
}

class _OrderHistoryWidgetWidgetState extends State<OrderHistoryWidgetWidget> {
  late OrderHistoryWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderHistoryWidgetModel());

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
      width: double.infinity,
      height: 185.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 360.0,
                height: 43.0,
                child: Stack(
                  children: [
                    Container(
                      width: 360.0,
                      height: 43.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              dateTimeFormat('M/d H:mm', widget.day),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'noto sans',
                                    fontSize: 14.0,
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
                          const EdgeInsetsDirectional.fromSTEB(280.0, 20.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'order_history_detail',
                                queryParameters: {
                                  'orderId': serializeParam(
                                    widget.orderId,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Text(
                              '주문 상세',
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
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed(
                                'order_history_detail',
                                queryParameters: {
                                  'orderId': serializeParam(
                                    widget.orderId,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: const Icon(
                              Icons.chevron_right,
                              color: Color(0xFFABACB5),
                              size: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/Gap.svg',
              width: 360.0,
              height: 1.0,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      '상품명     ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            color: const Color(0xFF45474E),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      '${widget.productName} 외 ? 건',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      '주문 번호',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            color: const Color(0xFF45474E),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.orderId?.toString(),
                        '1',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      '주문 상세',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            color: const Color(0xFF45474E),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.payment,
                        '1',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      '결제 금액',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            color: const Color(0xFF45474E),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.payment,
                        '1',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      '주문 상태',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            color: const Color(0xFF45474E),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.shippingStatus,
                        '1',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            thickness: 8.0,
            color: Color(0xFFF4F4F5),
          ),
        ],
      ),
    );
  }
}
