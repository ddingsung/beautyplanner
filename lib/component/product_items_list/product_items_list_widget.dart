import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'product_items_list_model.dart';
export 'product_items_list_model.dart';

class ProductItemsListWidget extends StatefulWidget {
  const ProductItemsListWidget({
    super.key,
    String? productName,
    required this.discount,
    required this.originalPrice,
    required this.price,
    required this.liked,
    required this.productImg,
  }) : productName = productName ?? 'dd';

  final String productName;
  final double? discount;
  final int? originalPrice;
  final double? price;
  final int? liked;
  final List<String>? productImg;

  @override
  State<ProductItemsListWidget> createState() => _ProductItemsListWidgetState();
}

class _ProductItemsListWidgetState extends State<ProductItemsListWidget> {
  late ProductItemsListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductItemsListModel());

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
      width: 158.0,
      height: 312.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        widget.productImg!.first,
                        width: 144.0,
                        height: 179.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 0.0),
                  child: Container(
                    width: 85.0,
                    height: 24.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).electricBlue2,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.discount?.toString(),
                              '1',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Text(
                            '% 할인',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  color: Colors.white,
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 4.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: '담기',
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 12.0,
              ),
              options: FFButtonOptions(
                width: 143.0,
                height: 24.0,
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: Colors.white,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'noto sans',
                      color: Colors.black,
                      fontSize: 10.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
                elevation: 0.0,
                borderSide: const BorderSide(
                  color: Color(0xFFC6C7CD),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
          Container(
            width: 117.0,
            height: 35.0,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 0.0, 0.0),
                  child: Text(
                    widget.productName.maybeHandleOverflow(
                      maxChars: 20,
                      replacement: '…',
                    ),
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                          lineHeight: 1.0,
                        ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    valueOrDefault<String>(
                      formatNumber(
                        widget.originalPrice,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.automatic,
                      ),
                      '1',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: const Color(0xFFC6C7CD),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          decoration: TextDecoration.lineThrough,
                          useGoogleFonts: false,
                        ),
                  ),
                  Text(
                    '원',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: const Color(0xFFC6C7CD),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          decoration: TextDecoration.lineThrough,
                          useGoogleFonts: false,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 1.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.discount?.toString(),
                    '1',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'noto sans',
                        color: FlutterFlowTheme.of(context).electricBlue2,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: Text(
                    '%',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: FlutterFlowTheme.of(context).electricBlue2,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    formatNumber(
                      widget.price,
                      formatType: FormatType.decimal,
                      decimalType: DecimalType.automatic,
                    ),
                    '1',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'noto sans',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
                Text(
                  '원',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'noto sans',
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                const Icon(
                  Icons.favorite_border,
                  color: Color(0xFFABACB5),
                  size: 15.0,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 2.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.liked?.toString(),
                      '999',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'noto sans',
                          color: const Color(0xFFABACB5),
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          useGoogleFonts: false,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
