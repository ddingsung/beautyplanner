import '/component/app_bar2/app_bar2_widget.dart';
import '/component/nav_bar1/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'order_history_widget.dart' show OrderHistoryWidget;
import 'package:flutter/material.dart';

class OrderHistoryModel extends FlutterFlowModel<OrderHistoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for appBar2 component.
  late AppBar2Model appBar2Model;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    appBar2Model = createModel(context, () => AppBar2Model());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    appBar2Model.dispose();
    navBar1Model.dispose();
  }
}
