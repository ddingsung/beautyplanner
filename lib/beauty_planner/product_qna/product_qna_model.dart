import '/component/product_q_n_a/product_q_n_a_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_qna_widget.dart' show ProductQnaWidget;
import 'package:flutter/material.dart';

class ProductQnaModel extends FlutterFlowModel<ProductQnaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for product_QNA component.
  late ProductQNAModel productQNAModel;

  @override
  void initState(BuildContext context) {
    productQNAModel = createModel(context, () => ProductQNAModel());
  }

  @override
  void dispose() {
    productQNAModel.dispose();
  }
}
