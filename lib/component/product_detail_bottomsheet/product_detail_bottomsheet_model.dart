import '/component/custom_counting_box/custom_counting_box_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_detail_bottomsheet_widget.dart'
    show ProductDetailBottomsheetWidget;
import 'package:flutter/material.dart';

class ProductDetailBottomsheetModel
    extends FlutterFlowModel<ProductDetailBottomsheetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for custom_countingBox component.
  late CustomCountingBoxModel customCountingBoxModel;

  @override
  void initState(BuildContext context) {
    customCountingBoxModel =
        createModel(context, () => CustomCountingBoxModel());
  }

  @override
  void dispose() {
    customCountingBoxModel.dispose();
  }
}
