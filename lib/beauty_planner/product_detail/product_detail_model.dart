import '/backend/schema/structs/index.dart';
import '/component/app_bar1/app_bar1_widget.dart';
import '/component/banner_card/banner_card_widget.dart';
import '/component/custom_carousel/custom_carousel_widget.dart';
import '/component/product_items_list/product_items_list_widget.dart';
import '/component/product_list_choice_chips/product_list_choice_chips_widget.dart';
import '/component/product_q_n_a/product_q_n_a_widget.dart';
import '/component/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'product_detail_widget.dart' show ProductDetailWidget;
import 'package:flutter/material.dart';

class ProductDetailModel extends FlutterFlowModel<ProductDetailWidget> {
  ///  Local state fields for this page.

  String selectedTab = '상품정보';

  String reviewTab = 'recent';

  ProductAllStruct? product;
  void updateProductStruct(Function(ProductAllStruct) updateFn) {
    updateFn(product ??= ProductAllStruct());
  }

  List<ReviewStruct> review = [];
  void addToReview(ReviewStruct item) => review.add(item);
  void removeFromReview(ReviewStruct item) => review.remove(item);
  void removeAtIndexFromReview(int index) => review.removeAt(index);
  void insertAtIndexInReview(int index, ReviewStruct item) =>
      review.insert(index, item);
  void updateReviewAtIndex(int index, Function(ReviewStruct) updateFn) =>
      review[index] = updateFn(review[index]);

  ///  State fields for stateful widgets in this page.

  // Model for appBar1 component.
  late AppBar1Model appBar1Model;
  // Model for custom_carousel component.
  late CustomCarouselModel customCarouselModel;
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
  // Model for product_items_list component.
  late ProductItemsListModel productItemsListModel1;
  // Model for product_items_list component.
  late ProductItemsListModel productItemsListModel2;
  // Model for product_QNA component.
  late ProductQNAModel productQNAModel1;
  // Model for product_QNA component.
  late ProductQNAModel productQNAModel2;
  // Model for search_bar component.
  late SearchBarModel searchBarModel;

  @override
  void initState(BuildContext context) {
    appBar1Model = createModel(context, () => AppBar1Model());
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
    productItemsListModel1 =
        createModel(context, () => ProductItemsListModel());
    productItemsListModel2 =
        createModel(context, () => ProductItemsListModel());
    productQNAModel1 = createModel(context, () => ProductQNAModel());
    productQNAModel2 = createModel(context, () => ProductQNAModel());
    searchBarModel = createModel(context, () => SearchBarModel());
  }

  @override
  void dispose() {
    appBar1Model.dispose();
    customCarouselModel.dispose();
    bannerCardModel.dispose();
    productListChoiceChipsModel1.dispose();
    productListChoiceChipsModel2.dispose();
    productListChoiceChipsModel3.dispose();
    productListChoiceChipsModel4.dispose();
    productItemsListModel1.dispose();
    productItemsListModel2.dispose();
    productQNAModel1.dispose();
    productQNAModel2.dispose();
    searchBarModel.dispose();
  }
}
