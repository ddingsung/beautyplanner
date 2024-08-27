import '/auth/supabase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/component/custom_counting_box/custom_counting_box_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
    return FutureBuilder<List<CartRow>>(
      future: CartTable().querySingleRow(
        queryFn: (q) => q
            .eq(
              'user_uid',
              currentUserUid,
            )
            .eq(
              'product_uid',
              widget.productUid,
            ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<CartRow> containerCartRowList = snapshot.data!;

        final containerCartRow =
            containerCartRowList.isNotEmpty ? containerCartRowList.first : null;

        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 294.0,
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 6.0, 0.0, 12.0),
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
                            ((widget.price!) -
                                    ((widget.price!) *
                                        ((widget.discount!) / 100))) *
                                _model.customCountingBoxModel.count,
                            formatType: FormatType.decimal,
                            decimalType: DecimalType.automatic,
                          )}원',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 12.0, 0.0),
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
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '내일(토) 7/12 도착 예정',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            fontSize: functions.setFontSize(12.0),
                            letterSpacing: 0.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ],
                ),
              ),
              const Divider(
                thickness: 1.0,
                color: Color(0xFFF4F4F5),
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
                      onPressed: () async {
                        if ((containerCartRow?.productUid ==
                                    widget.productUid) &&
                                (containerCartRow?.status == '1')
                            ? true
                            : false) {
                          await CartTable().update(
                            data: {
                              'updated_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'quantity': (containerCartRow!.quantity!) +
                                  _model.customCountingBoxModel.count,
                            },
                            matchingRows: (rows) => rows.eq(
                              'product_uid',
                              widget.productUid,
                            ),
                          );
                        } else {
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
                          FFAppState().updateCartStruct(
                            (e) => e
                              ..updateProducts(
                                (e) => e.add(ProductAllStruct(
                                  productName: widget.productName,
                                  productPrice: widget.price,
                                  productMaker: widget.maker,
                                  discount: widget.discount,
                                )),
                              )
                              ..cartId = containerCartRow?.cartId
                              ..cartCreatedAt = getCurrentTimestamp,
                          );
                          setState(() {});
                        }

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
                      text: '장바구니 담기',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        height: 35.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'noto sans',
                                  color: const Color(0xFF61E5FA),
                                  fontSize: functions.setFontSize(14.0),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                        elevation: 0.0,
                        borderSide: const BorderSide(
                          color: Color(0xFF61E5FA),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    FFButtonWidget(
                      onPressed: () async {
                        if ((containerCartRow?.productUid ==
                                    widget.productUid) &&
                                (containerCartRow?.status == '1')
                            ? true
                            : false) {
                          await CartTable().update(
                            data: {
                              'updated_at':
                                  supaSerialize<DateTime>(getCurrentTimestamp),
                              'quantity': (containerCartRow!.quantity!) +
                                  _model.customCountingBoxModel.count,
                            },
                            matchingRows: (rows) => rows.eq(
                              'product_uid',
                              widget.productUid,
                            ),
                          );
                        } else {
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
                          FFAppState().updateCartStruct(
                            (e) => e
                              ..updateProducts(
                                (e) => e.add(ProductAllStruct(
                                  productName: widget.productName,
                                  productPrice: widget.price,
                                  productMaker: widget.maker,
                                  discount: widget.discount,
                                )),
                              )
                              ..cartId = containerCartRow?.cartId
                              ..cartCreatedAt = getCurrentTimestamp,
                          );
                          setState(() {});
                        }

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
                        width: MediaQuery.sizeOf(context).width * 0.45,
                        height: 35.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF61E5FA),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'noto sans',
                                  color: Colors.white,
                                  fontSize: functions.setFontSize(14.0),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                  useGoogleFonts: false,
                                ),
                        elevation: 0.0,
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
      },
    );
  }
}
