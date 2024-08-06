import '/flutter_flow/flutter_flow_util.dart';
import 'search_image_widget.dart' show SearchImageWidget;
import 'package:flutter/material.dart';

class SearchImageModel extends FlutterFlowModel<SearchImageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
