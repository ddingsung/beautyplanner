import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'custom_carousel_model.dart';
export 'custom_carousel_model.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({
    super.key,
    this.imgUrl,
    this.productUid,
  });

  final List<String>? imgUrl;
  final String? productUid;

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  late CustomCarouselModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomCarouselModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductsRow>>(
      future: ProductsTable().querySingleRow(
        queryFn: (q) => q.eq(
          'product_uid',
          widget.productUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<ProductsRow> stackProductsRowList = snapshot.data!;

        final stackProductsRow =
            stackProductsRowList.isNotEmpty ? stackProductsRowList.first : null;
        return SizedBox(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: 284.0,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 284.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Builder(
                      builder: (context) {
                        final imgurl = stackProductsRow?.productImg
                                .map((e) => e)
                                .toList()
                                .toList() ??
                            [];

                        return SizedBox(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 284.0,
                          child: CarouselSlider.builder(
                            itemCount: imgurl.length,
                            itemBuilder: (context, imgurlIndex, _) {
                              final imgurlItem = imgurl[imgurlIndex];
                              return ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  imgurlItem,
                                  fit: BoxFit.fill,
                                ),
                              );
                            },
                            carouselController: _model.carouselController ??=
                                CarouselController(),
                            options: CarouselOptions(
                              initialPage: max(0, min(1, imgurl.length - 1)),
                              viewportFraction: 1.0,
                              disableCenter: true,
                              enlargeCenterPage: false,
                              enlargeFactor: 0.0,
                              enableInfiniteScroll: true,
                              scrollDirection: Axis.horizontal,
                              autoPlay: false,
                              onPageChanged: (index, _) =>
                                  _model.carouselCurrentIndex = index,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                  child: Container(
                    width: 32.0,
                    height: 16.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF90929D),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '${valueOrDefault<String>(
                            _model.imgIndex.toString(),
                            '1',
                          )}/${stackProductsRow?.productImg.length.toString()}',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8.0, 130.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    unawaited(
                      () async {
                        await _model.carouselController?.previousPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        );
                      }(),
                    );
                    if (_model.imgIndex == 1 ? true : false) {
                      _model.imgIndex = stackProductsRow!.productImg.length;
                      setState(() {});
                    } else {
                      _model.imgIndex = _model.imgIndex + -1;
                      setState(() {});
                    }
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    color: Color(0xFFFCFCFD),
                    size: 24.0,
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      unawaited(
                        () async {
                          await _model.carouselController?.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        }(),
                      );
                      if (_model.imgIndex ==
                              stackProductsRow?.productImg.length
                          ? true
                          : false) {
                        _model.imgIndex = 1;
                        setState(() {});
                      } else {
                        _model.imgIndex = _model.imgIndex + 1;
                        setState(() {});
                      }
                    },
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFFFCFCFD),
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
