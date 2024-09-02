import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_plan_set_day_widget.dart' show UserPlanSetDayWidget;
import 'package:flutter/material.dart';

class UserPlanSetDayModel extends FlutterFlowModel<UserPlanSetDayWidget> {
  ///  Local state fields for this page.

  bool isExpanded = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
