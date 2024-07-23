import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'review_bottomsheet_widget.dart' show ReviewBottomsheetWidget;
import 'package:flutter/material.dart';

class ReviewBottomsheetModel extends FlutterFlowModel<ReviewBottomsheetWidget> {
  ///  Local state fields for this component.

  double? rating = 0.0;

  List<String> imgUrls = [];
  void addToImgUrls(String item) => imgUrls.add(item);
  void removeFromImgUrls(String item) => imgUrls.remove(item);
  void removeAtIndexFromImgUrls(int index) => imgUrls.removeAt(index);
  void insertAtIndexInImgUrls(int index, String item) =>
      imgUrls.insert(index, item);
  void updateImgUrlsAtIndex(int index, Function(String) updateFn) =>
      imgUrls[index] = updateFn(imgUrls[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
