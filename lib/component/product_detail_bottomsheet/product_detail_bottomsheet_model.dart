import '/component/custom_counting_box/custom_counting_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'product_detail_bottomsheet_widget.dart'
    show ProductDetailBottomsheetWidget;
import 'package:flutter/material.dart';

class ProductDetailBottomsheetModel
    extends FlutterFlowModel<ProductDetailBottomsheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for custom_countingBox component.
  late CustomCountingBoxModel customCountingBoxModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;

  @override
  void initState(BuildContext context) {
    customCountingBoxModel =
        createModel(context, () => CustomCountingBoxModel());
  }

  @override
  void dispose() {
    customCountingBoxModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
