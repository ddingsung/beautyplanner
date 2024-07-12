import '/backend/supabase/supabase.dart';
import '/components/app_bar2_widget.dart';
import '/components/order_history_detail_widget_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
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
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: true,
              floating: false,
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
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: FutureBuilder<List<OrderHistoryRow>>(
                        future: OrderHistoryTable().querySingleRow(
                          queryFn: (q) => q.eq(
                            'order_id',
                            widget.orderId,
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
                          List<OrderHistoryRow> containerOrderHistoryRowList =
                              snapshot.data!;

                          final containerOrderHistoryRow =
                              containerOrderHistoryRowList.isNotEmpty
                                  ? containerOrderHistoryRowList.first
                                  : null;
                          return Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Align(
                                      alignment:
                                          const AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 12.0, 0.0, 12.0),
                                        child: Text(
                                          '전체 ${containerOrderHistoryRow?.productName.length.toString()}개',
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
                                              'M/d h:mm a',
                                              containerOrderHistoryRow!
                                                  .createdAt),
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
                                Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(),
                                  child: Builder(
                                    builder: (context) {
                                      final list = containerOrderHistoryRow
                                              .productName
                                              .map((e) => e)
                                              .toList()
                                              .toList() ??
                                          [];

                                      return SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(list.length,
                                              (listIndex) {
                                            final listItem = list[listIndex];
                                            return Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 12.0),
                                                child:
                                                    OrderHistoryDetailWidgetWidget(
                                                  key: Key(
                                                      'Key01u_${listIndex}_of_${list.length}'),
                                                  productName: listItem,
                                                  productPrice:
                                                      containerOrderHistoryRow
                                                          .price[listIndex],
                                                  quantity:
                                                      containerOrderHistoryRow
                                                              .quantity[
                                                          listIndex],
                                                ),
                                              ),
                                            );
                                          }),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
