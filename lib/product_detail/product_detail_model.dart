import '/components/banner_card_widget.dart';
import '/components/custom_carousel_widget.dart';
import '/components/product_list_choice_chips_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_detail_widget.dart' show ProductDetailWidget;
import 'package:flutter/material.dart';

class ProductDetailModel extends FlutterFlowModel<ProductDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for custom_carousel component.
  late CustomCarouselModel customCarouselModel;
  // State field(s) for RatingBar widget.
  double? ratingBarValue;
  // Model for banner_card component.
  late BannerCardModel bannerCardModel;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel1;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel2;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel3;
  // Model for product_list_choiceChips component.
  late ProductListChoiceChipsModel productListChoiceChipsModel4;

  @override
  void initState(BuildContext context) {
    customCarouselModel = createModel(context, () => CustomCarouselModel());
    bannerCardModel = createModel(context, () => BannerCardModel());
    productListChoiceChipsModel1 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel2 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel3 =
        createModel(context, () => ProductListChoiceChipsModel());
    productListChoiceChipsModel4 =
        createModel(context, () => ProductListChoiceChipsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customCarouselModel.dispose();
    bannerCardModel.dispose();
    productListChoiceChipsModel1.dispose();
    productListChoiceChipsModel2.dispose();
    productListChoiceChipsModel3.dispose();
    productListChoiceChipsModel4.dispose();
  }
}
