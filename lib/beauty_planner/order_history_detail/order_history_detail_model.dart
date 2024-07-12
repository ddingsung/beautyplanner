import '/backend/supabase/supabase.dart';
import '/components/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_history_detail_widget.dart' show OrderHistoryDetailWidget;
import 'package:flutter/material.dart';

class OrderHistoryDetailModel
    extends FlutterFlowModel<OrderHistoryDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in order_history_detail widget.
  List<OrderHistoryRow>? orderId;
  // Stores action output result for [Backend Call - Query Rows] action in order_history_detail widget.
  List<ProductsRow>? productN;
  // Model for appBar2 component.
  late AppBar2Model appBar2Model;

  @override
  void initState(BuildContext context) {
    appBar2Model = createModel(context, () => AppBar2Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appBar2Model.dispose();
  }
}
