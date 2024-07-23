import '/component/main_carousel/main_carousel_widget.dart';
import '/component/nav_bar1/nav_bar1_widget.dart';
import '/component/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'test_practice_widget.dart' show TestPracticeWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class TestPracticeModel extends FlutterFlowModel<TestPracticeWidget> {
  ///  Local state fields for this page.

  bool searchBar = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for search_bar component.
  late SearchBarModel searchBarModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  List<String>? get choiceChipsValues => choiceChipsValueController?.value;
  set choiceChipsValues(List<String>? val) =>
      choiceChipsValueController?.value = val;
  // Model for main_carousel component.
  late MainCarouselModel mainCarouselModel;
  // State field(s) for Carousel widget.
  CarouselController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    searchBarModel = createModel(context, () => SearchBarModel());
    mainCarouselModel = createModel(context, () => MainCarouselModel());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    searchBarModel.dispose();
    mainCarouselModel.dispose();
    navBar1Model.dispose();
  }
}
