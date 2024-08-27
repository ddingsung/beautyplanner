import '/flutter_flow/flutter_flow_util.dart';
import 'dasd_widget.dart' show DasdWidget;
import 'package:flutter/material.dart';

class DasdModel extends FlutterFlowModel<DasdWidget> {
  ///  Local state fields for this page.

  int? count;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
