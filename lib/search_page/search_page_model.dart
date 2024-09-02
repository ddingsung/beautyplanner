import '/component/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for search_bar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    searchBarModel.dispose();
  }
}
