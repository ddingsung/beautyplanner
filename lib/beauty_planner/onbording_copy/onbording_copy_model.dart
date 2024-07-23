import '/component/beaury/beaury_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'onbording_copy_widget.dart' show OnbordingCopyWidget;
import 'package:flutter/material.dart';

class OnbordingCopyModel extends FlutterFlowModel<OnbordingCopyWidget> {
  ///  Local state fields for this page.

  bool firstImg = true;

  Color? firstText = const Color(0xffffffff);

  Color? secondText = const Color(0xffffffff);

  Color? thirdText = const Color(0xffffffff);

  bool firstViewText = true;

  bool secondViewText = true;

  bool viewLogo = true;

  bool page2 = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for beaury component.
  late BeauryModel beauryModel;

  @override
  void initState(BuildContext context) {
    beauryModel = createModel(context, () => BeauryModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    beauryModel.dispose();
  }
}
