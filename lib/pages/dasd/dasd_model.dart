import '/flutter_flow/flutter_flow_util.dart';
import 'dasd_widget.dart' show DasdWidget;
import 'package:flutter/material.dart';

class DasdModel extends FlutterFlowModel<DasdWidget> {
  ///  Local state fields for this page.

  int? count;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
