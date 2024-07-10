import '/component/plan_card_component/plan_card_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_plan_result_widget.dart' show UserPlanResultWidget;
import 'package:flutter/material.dart';

class UserPlanResultModel extends FlutterFlowModel<UserPlanResultWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for planCardComponent component.
  late PlanCardComponentModel planCardComponentModel;

  @override
  void initState(BuildContext context) {
    planCardComponentModel =
        createModel(context, () => PlanCardComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    planCardComponentModel.dispose();
  }
}
