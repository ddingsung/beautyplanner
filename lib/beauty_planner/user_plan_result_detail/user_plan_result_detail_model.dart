import '/component/recommend_plan_list/recommend_plan_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'user_plan_result_detail_widget.dart' show UserPlanResultDetailWidget;
import 'package:flutter/material.dart';

class UserPlanResultDetailModel
    extends FlutterFlowModel<UserPlanResultDetailWidget> {
  ///  Local state fields for this page.

  bool isChecked = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for recommend_plan_List component.
  late RecommendPlanListModel recommendPlanListModel;

  @override
  void initState(BuildContext context) {
    recommendPlanListModel =
        createModel(context, () => RecommendPlanListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    recommendPlanListModel.dispose();
  }
}
