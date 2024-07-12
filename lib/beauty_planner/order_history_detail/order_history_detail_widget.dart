import '/backend/supabase/supabase.dart';
import '/components/app_bar2_widget.dart';
import '/components/order_history_detail_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'order_history_detail_model.dart';
export 'order_history_detail_model.dart';

class OrderHistoryDetailWidget extends StatefulWidget {
  const OrderHistoryDetailWidget({
    super.key,
    int? orderId,
  }) : orderId = orderId ?? 1;

  final int orderId;

  @override
  State<OrderHistoryDetailWidget> createState() =>
      _OrderHistoryDetailWidgetState();
}

class _OrderHistoryDetailWidgetState extends State<OrderHistoryDetailWidget> {
  late OrderHistoryDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderHistoryDetailModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.orderId = await OrderHistoryTable().queryRows(
        queryFn: (q) => q.eq(
          'order_id',
          widget.orderId,
        ),
      );
      _model.productN = await ProductsTable().queryRows(
        queryFn: (q) => q.eq(
          'product_name',
          valueOrDefault<String>(
            _model.orderId?.first.productName.first,
            'product',
          ),
        ),
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: wrapWithModel(
                model: _model.appBar2Model,
                updateCallback: () => setState(() {}),
                child: const AppBar2Widget(
                  parameter1: '주문 내역',
                ),
              ),
              centerTitle: false,
              expandedTitleScale: 1.0,
            ),
            elevation: 4.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 28.0, 0.0, 16.0),
                            child: Text(
                              '주문 상세 내역',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'noto sans',
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 12.0, 0.0, 12.0),
                              child: Text(
                                '전체 ${_model.orderId?.first.productName.length.toString()}개',
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
                          ),
                          Align(
                            alignment: const AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 20.0, 12.0),
                              child: Text(
                                dateTimeFormat(
                                    'yMd', _model.orderId!.first.createdAt),
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
                          ),
                        ],
                      ),
                      Builder(
                        builder: (context) {
                          final productList = _model.orderId
                                  ?.map((e) => e.productName.first)
                                  .toList()
                                  .toList() ??
                              [];

                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(productList.length,
                                  (productListIndex) {
                                final productListItem =
                                    productList[productListIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 12.0),
                                  child: OrderHistoryDetailWidgetWidget(
                                    key: Key(
                                        'Key01u_${productListIndex}_of_${productList.length}'),
                                    productName: productListItem,
                                    productPrice: 1,
                                    quantity: 1,
                                  ),
                                );
                              }),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
