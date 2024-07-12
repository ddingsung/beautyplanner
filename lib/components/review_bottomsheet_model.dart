import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_bottomsheet_widget.dart' show ReviewBottomsheetWidget;
import 'package:flutter/material.dart';

class ReviewBottomsheetModel extends FlutterFlowModel<ReviewBottomsheetWidget> {
  ///  Local state fields for this component.

  double? rating = 0.0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // State field(s) for content widget.
  FocusNode? contentFocusNode;
  TextEditingController? contentTextController;
  String? Function(BuildContext, String?)? contentTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ReviewsRow? writeReview;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    contentFocusNode?.dispose();
    contentTextController?.dispose();
  }
}
