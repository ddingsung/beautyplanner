import '/components/beaury_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_success_card_widget.dart' show ReviewSuccessCardWidget;
import 'package:flutter/material.dart';

class ReviewSuccessCardModel extends FlutterFlowModel<ReviewSuccessCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for beaury component.
  late BeauryModel beauryModel;

  @override
  void initState(BuildContext context) {
    beauryModel = createModel(context, () => BeauryModel());
  }

  @override
  void dispose() {
    beauryModel.dispose();
  }
}
