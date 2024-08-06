import '/component/nav_bar1/nav_bar1_widget.dart';
import '/component/plan_card_component/plan_card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_plan_result_widget.dart' show UserPlanResultWidget;
import 'package:flutter/material.dart';

class UserPlanResultModel extends FlutterFlowModel<UserPlanResultWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for planCardComponent component.
  late PlanCardComponentModel planCardComponentModel;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    planCardComponentModel =
        createModel(context, () => PlanCardComponentModel());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    planCardComponentModel.dispose();
    navBar1Model.dispose();
  }
}
