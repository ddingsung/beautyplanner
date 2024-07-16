import '/flutter_flow/flutter_flow_util.dart';
import 'custom_carousel_widget.dart' show CustomCarouselWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarouselModel extends FlutterFlowModel<CustomCarouselWidget> {
  ///  Local state fields for this component.

  int imgIndex = 1;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Carousel widget.
  CarouselController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
