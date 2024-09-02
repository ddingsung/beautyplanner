import '/flutter_flow/flutter_flow_util.dart';
import 'create_account2_widget.dart' show CreateAccount2Widget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccount2Model extends FlutterFlowModel<CreateAccount2Widget> {
  ///  Local state fields for this page.

  String? avatarUrl;

  DateTime? birth;

  String? gender;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nameTF widget.
  FocusNode? nameTFFocusNode;
  TextEditingController? nameTFTextController;
  String? Function(BuildContext, String?)? nameTFTextControllerValidator;
  // State field(s) for nickTF widget.
  FocusNode? nickTFFocusNode;
  TextEditingController? nickTFTextController;
  String? Function(BuildContext, String?)? nickTFTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for yearTF widget.
  FocusNode? yearTFFocusNode;
  TextEditingController? yearTFTextController;
  String? Function(BuildContext, String?)? yearTFTextControllerValidator;
  // State field(s) for monthTF widget.
  FocusNode? monthTFFocusNode;
  TextEditingController? monthTFTextController;
  String? Function(BuildContext, String?)? monthTFTextControllerValidator;
  // State field(s) for dayTF widget.
  FocusNode? dayTFFocusNode;
  TextEditingController? dayTFTextController;
  String? Function(BuildContext, String?)? dayTFTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nameTFFocusNode?.dispose();
    nameTFTextController?.dispose();

    nickTFFocusNode?.dispose();
    nickTFTextController?.dispose();

    yearTFFocusNode?.dispose();
    yearTFTextController?.dispose();

    monthTFFocusNode?.dispose();
    monthTFTextController?.dispose();

    dayTFFocusNode?.dispose();
    dayTFTextController?.dispose();
  }
}
