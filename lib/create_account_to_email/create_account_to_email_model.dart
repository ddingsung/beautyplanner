import '/flutter_flow/flutter_flow_util.dart';
import 'create_account_to_email_widget.dart' show CreateAccountToEmailWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccountToEmailModel
    extends FlutterFlowModel<CreateAccountToEmailWidget> {
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

  // State field(s) for emailTF widget.
  FocusNode? emailTFFocusNode;
  TextEditingController? emailTFTextController;
  String? Function(BuildContext, String?)? emailTFTextControllerValidator;
  // State field(s) for passTF widget.
  FocusNode? passTFFocusNode;
  TextEditingController? passTFTextController;
  late bool passTFVisibility;
  String? Function(BuildContext, String?)? passTFTextControllerValidator;
  // State field(s) for passConfirmTF widget.
  FocusNode? passConfirmTFFocusNode;
  TextEditingController? passConfirmTFTextController;
  late bool passConfirmTFVisibility;
  String? Function(BuildContext, String?)? passConfirmTFTextControllerValidator;
  // State field(s) for nameTF widget.
  FocusNode? nameTFFocusNode;
  TextEditingController? nameTFTextController;
  String? Function(BuildContext, String?)? nameTFTextControllerValidator;
  // State field(s) for nicknameTF widget.
  FocusNode? nicknameTFFocusNode;
  TextEditingController? nicknameTFTextController;
  String? Function(BuildContext, String?)? nicknameTFTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;

  @override
  void initState(BuildContext context) {
    passTFVisibility = false;
    passConfirmTFVisibility = false;
  }

  @override
  void dispose() {
    emailTFFocusNode?.dispose();
    emailTFTextController?.dispose();

    passTFFocusNode?.dispose();
    passTFTextController?.dispose();

    passConfirmTFFocusNode?.dispose();
    passConfirmTFTextController?.dispose();

    nameTFFocusNode?.dispose();
    nameTFTextController?.dispose();

    nicknameTFFocusNode?.dispose();
    nicknameTFTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();
  }
}
