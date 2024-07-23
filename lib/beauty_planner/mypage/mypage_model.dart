import '/component/nav_bar1/nav_bar1_widget.dart';
import '/component/plan_list/plan_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mypage_widget.dart' show MypageWidget;
import 'package:flutter/material.dart';

class MypageModel extends FlutterFlowModel<MypageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for planList component.
  late PlanListModel planListModel;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    planListModel = createModel(context, () => PlanListModel());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    planListModel.dispose();
    navBar1Model.dispose();
  }
}
