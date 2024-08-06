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

  List<String> imgListCount = [];
  void addToImgListCount(String item) => imgListCount.add(item);
  void removeFromImgListCount(String item) => imgListCount.remove(item);
  void removeAtIndexFromImgListCount(int index) => imgListCount.removeAt(index);
  void insertAtIndexInImgListCount(int index, String item) =>
      imgListCount.insert(index, item);
  void updateImgListCountAtIndex(int index, Function(String) updateFn) =>
      imgListCount[index] = updateFn(imgListCount[index]);

  int? index = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  List<FFUploadedFile> uploadedLocalFiles2 = [];
  List<String> uploadedFileUrls2 = [];

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
