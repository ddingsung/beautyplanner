import '/flutter_flow/flutter_flow_util.dart';
import 'lottie_test_widget.dart' show LottieTestWidget;
import 'package:flutter/material.dart';

class LottieTestModel extends FlutterFlowModel<LottieTestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
