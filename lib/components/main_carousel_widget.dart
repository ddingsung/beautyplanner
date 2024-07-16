import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main_carousel_model.dart';
export 'main_carousel_model.dart';

class MainCarouselWidget extends StatefulWidget {
  const MainCarouselWidget({super.key});

  @override
  State<MainCarouselWidget> createState() => _MainCarouselWidgetState();
}

class _MainCarouselWidgetState extends State<MainCarouselWidget> {
  late MainCarouselModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainCarouselModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: 195.0,
              decoration: const BoxDecoration(
                color: Color(0x00FFFFFF),
              ),
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Container(
                      width: 278.0,
                      height: 142.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        height: 180.0,
                        child: CarouselSlider(
                          items: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://picsum.photos/seed/770/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://picsum.photos/seed/906/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://picsum.photos/seed/695/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                'https://picsum.photos/seed/942/600',
                                width: 300.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                          carouselController: _model.carouselController ??=
                              CarouselController(),
                          options: CarouselOptions(
                            initialPage: 1,
                            viewportFraction: 1.0,
                            disableCenter: true,
                            enlargeCenterPage: false,
                            enlargeFactor: 0.0,
                            enableInfiniteScroll: true,
                            scrollDirection: Axis.vertical,
                            autoPlay: true,
                            autoPlayAnimationDuration:
                                const Duration(milliseconds: 800),
                            autoPlayInterval:
                                const Duration(milliseconds: (800 + 4000)),
                            autoPlayCurve: Curves.linear,
                            pauseAutoPlayInFiniteScroll: true,
                            onPageChanged: (index, _) =>
                                _model.carouselCurrentIndex = index,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: SvgPicture.asset(
                          'assets/images/Home_Typo_carousel_cat.svg',
                          width: 331.0,
                          height: 195.0,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
