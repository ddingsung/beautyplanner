import '/components/banner_card_widget.dart';
import '/components/product_items_list_widget.dart';
import '/components/product_list_choice_chips_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_list_widget.dart' show ProductListWidget;
import 'package:flutter/material.dart';

class ProductListModel extends FlutterFlowModel<ProductListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel1;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel2;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel3;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel4;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel5;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel6;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel7;
  // Model for product_items_list component.
  late ProductItemsListModel productItemsListModel1;
  // Model for banner_card component.
  late BannerCardModel bannerCardModel;
  // Model for product_items_list component.
  late ProductItemsListModel productItemsListModel2;

  @override
  void initState(BuildContext context) {
    productListChoiceChipsModel1 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel2 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel3 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel4 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel5 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel6 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel7 =
        createModel(context, () => ProductListChoiceChipsModel());
    productItemsListModel1 =
        createModel(context, () => ProductItemsListModel());
    bannerCardModel = createModel(context, () => BannerCardModel());
    productItemsListModel2 =
        createModel(context, () => ProductItemsListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    productListChoiceChipsModel1.dispose();
    productListChoiceChipsModel2.dispose();
    productListChoiceChipsModel3.dispose();
    productListChoiceChipsModel4.dispose();
    productListChoiceChipsModel5.dispose();
    productListChoiceChipsModel6.dispose();
    productListChoiceChipsModel7.dispose();
    productItemsListModel1.dispose();
    bannerCardModel.dispose();
    productItemsListModel2.dispose();
  }
}
