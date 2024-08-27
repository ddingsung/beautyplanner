import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'main_tutorial_bottom_sheet_widget.dart'
    show MainTutorialBottomSheetWidget;
import 'package:flutter/material.dart';

class MainTutorialBottomSheetModel
    extends FlutterFlowModel<MainTutorialBottomSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
