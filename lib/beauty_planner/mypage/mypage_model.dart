import '/components/plan_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mypage_widget.dart' show MypageWidget;
import 'package:flutter/material.dart';

class MypageModel extends FlutterFlowModel<MypageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for planList component.
  late PlanListModel planListModel;

  @override
  void initState(BuildContext context) {
    planListModel = createModel(context, () => PlanListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    planListModel.dispose();
  }
}
