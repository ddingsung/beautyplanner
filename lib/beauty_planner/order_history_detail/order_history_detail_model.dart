import '/component/app_bar2/app_bar2_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_history_detail_widget.dart' show OrderHistoryDetailWidget;
import 'package:flutter/material.dart';

class OrderHistoryDetailModel
    extends FlutterFlowModel<OrderHistoryDetailWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for appBar2 component.
  late AppBar2Model appBar2Model;

  @override
  void initState(BuildContext context) {
    appBar2Model = createModel(context, () => AppBar2Model());
  }

  @override
  void dispose() {
    appBar2Model.dispose();
  }
}
