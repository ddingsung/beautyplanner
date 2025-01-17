import '/backend/supabase/supabase.dart';
import '/component/app_bar1/app_bar1_widget.dart';
import '/component/banner_card/banner_card_widget.dart';
import '/component/custom_carousel/custom_carousel_widget.dart';
import '/component/product_detail_bottomsheet/product_detail_bottomsheet_widget.dart';
import '/component/product_items_list/product_items_list_widget.dart';
import '/component/product_list_choice_chips/product_list_choice_chips_widget.dart';
import '/component/product_q_n_a/product_q_n_a_widget.dart';
import '/component/review/review_widget.dart';
import '/component/review_bottomsheet/review_bottomsheet_widget.dart';
import '/component/search_bar/search_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'product_detail_model.dart';
export 'product_detail_model.dart';

class ProductDetailWidget extends StatefulWidget {
  const ProductDetailWidget({
    super.key,
    required this.productUid,
  });

  final String? productUid;

  @override
  State<ProductDetailWidget> createState() => _ProductDetailWidgetState();
}

class _ProductDetailWidgetState extends State<ProductDetailWidget> {
  late ProductDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductDetailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ProductsRow> productDetailProductsRowList = snapshot.data!;

        final productDetailProductsRow = productDetailProductsRowList.isNotEmpty
            ? productDetailProductsRowList.first
            : null;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(55.0),
              child: AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                actions: const [],
                flexibleSpace: FlexibleSpaceBar(
                  title: wrapWithModel(
                    model: _model.appBar1Model,
                    updateCallback: () => setState(() {}),
                    child: AppBar1Widget(
                      parameter1: productDetailProductsRow?.productMaker,
                      parameter2: productDetailProductsRow?.productName,
                    ),
                  ),
                  centerTitle: true,
                  expandedTitleScale: 1.0,
                ),
                elevation: 0.0,
              ),
            ),
            body: SafeArea(
              top: true,
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Stack(
                          alignment: const AlignmentDirectional(0.0, 1.0),
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      wrapWithModel(
                                        model: _model.customCarouselModel,
                                        updateCallback: () => setState(() {}),
                                        child: CustomCarouselWidget(
                                          productUid: widget.productUid,
                                        ),
                                      ),
                                    ],
                                  ),
                                  FutureBuilder<List<ReviewsRow>>(
                                    future: ReviewsTable().queryRows(
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
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<ReviewsRow> containerReviewsRowList =
                                          snapshot.data!;

                                      return Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                1.0,
                                        decoration: const BoxDecoration(),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 22.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '[${productDetailProductsRow?.productMaker}]',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'noto sans',
                                                                fontSize: functions
                                                                    .setFontSize(
                                                                        12.0),
                                                                letterSpacing:
                                                                    0.0,
                                                                useGoogleFonts:
                                                                    false,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  6.0,
                                                                  0.0,
                                                                  12.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          productDetailProductsRow
                                                              ?.productName,
                                                          '1',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'noto sans',
                                                                  fontSize: functions
                                                                      .setFontSize(
                                                                          16.0),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        '${formatNumber(
                                                          productDetailProductsRow
                                                              ?.productPrice,
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .automatic,
                                                        )}원',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'noto sans',
                                                                  color: const Color(
                                                                      0xFFABACB5),
                                                                  fontSize: functions
                                                                      .setFontSize(
                                                                          12.0),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .lineThrough,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 2.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        '${productDetailProductsRow?.discount?.toString()}%',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'noto sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .electricBlue2,
                                                                  fontSize: functions
                                                                      .setFontSize(
                                                                          18.0),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                      Text(
                                                        '${formatNumber(
                                                          (productDetailProductsRow!
                                                                  .productPrice!) -
                                                              ((productDetailProductsRow
                                                                      .productPrice!) *
                                                                  ((productDetailProductsRow
                                                                          .discount!) /
                                                                      100)),
                                                          formatType: FormatType
                                                              .decimal,
                                                          decimalType:
                                                              DecimalType
                                                                  .automatic,
                                                        )}원',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'noto sans',
                                                                  fontSize: functions
                                                                      .setFontSize(
                                                                          20.0),
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        const SizedBox(width: 12.0)),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 0.0),
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  1.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          FFButtonWidget(
                                                            onPressed: () {
                                                              print(
                                                                  'Button pressed ...');
                                                            },
                                                            text: '쿠폰 받기',
                                                            options:
                                                                FFButtonOptions(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.9,
                                                              height: 40.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          46.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color:
                                                                  Colors.white,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'noto sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .electricBlue2,
                                                                        fontSize:
                                                                            functions.setFontSize(12.0),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .electricBlue2,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    50.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Icon(
                                                          Icons
                                                              .file_download_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .electricBlue2,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    RatingBarIndicator(
                                                      itemBuilder:
                                                          (context, index) =>
                                                              Icon(
                                                        Icons.star_rounded,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .electricBlue2,
                                                      ),
                                                      direction:
                                                          Axis.horizontal,
                                                      rating: valueOrDefault<
                                                          double>(
                                                        containerReviewsRowList
                                                                .isNotEmpty
                                                            ? ((functions.reviewRatingAverage(
                                                                    containerReviewsRowList
                                                                        .toList())!) /
                                                                containerReviewsRowList
                                                                    .length)
                                                            : 0.0,
                                                        0.0,
                                                      ),
                                                      unratedColor:
                                                          const Color(0x3661E5FA),
                                                      itemCount: 5,
                                                      itemSize: 16.0,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  0.0,
                                                                  0.0,
                                                                  3.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          containerReviewsRowList
                                                                  .isNotEmpty
                                                              ? formatNumber(
                                                                  functions.reviewRatingAverage(
                                                                      containerReviewsRowList
                                                                          .toList()),
                                                                  formatType:
                                                                      FormatType
                                                                          .decimal,
                                                                  decimalType:
                                                                      DecimalType
                                                                          .automatic,
                                                                )
                                                              : '0',
                                                          '0',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'noto sans',
                                                              color: const Color(
                                                                  0xFFABACB5),
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                    const Icon(
                                                      Icons.chevron_right,
                                                      color: Color(0xFFABACB5),
                                                      size: 16.0,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.9,
                                                    height: 166.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0xFF747884),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          12.0),
                                                              child: Text(
                                                                '최대 적립 혜택',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(
                                                                          12.0),
                                                              child: Text(
                                                                '+ 500',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const Divider(
                                                          thickness: 1.0,
                                                          color:
                                                              Color(0xFFF4F4F5),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/database.svg',
                                                                  width: 18.0,
                                                                  height: 18.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '뷰플리 포인트',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'noto sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '500P',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'noto sans',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      20.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                '• 리뷰 작성 시 최대 500 P',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      color: const Color(
                                                                          0xFF757884),
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        const Divider(
                                                          thickness: 1.0,
                                                          color:
                                                              Color(0xFFF4F4F5),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '* 체험단, 샘플은 적립 대상에서 제외되며 추가상품은 리뷰 포인트 적립이\n 불가합니다.',
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      fontSize:
                                                                          10.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Divider(
                                                thickness: 1.0,
                                                color: Color(0xFFF4F4F5),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      '결제혜택',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'noto sans',
                                                            color: const Color(
                                                                0xFF45474E),
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '무이자 혜택보기',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'noto sans',
                                                              color: const Color(
                                                                  0xFF90929D),
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              decoration:
                                                                  TextDecoration
                                                                      .underline,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Divider(
                                                thickness: 1.0,
                                                color: Color(0xFFF4F4F5),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      '배송',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'noto sans',
                                                            color: const Color(
                                                                0xFF45474E),
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  34.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '일반배송',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'noto sans',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 13.0,
                                                      child: VerticalDivider(
                                                        thickness: 1.0,
                                                        color:
                                                            Color(0xFFE2E3E6),
                                                      ),
                                                    ),
                                                    Text(
                                                      '무료배송',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'noto sans',
                                                            color: const Color(
                                                                0xFF5D5F69),
                                                            fontSize: 10.0,
                                                            letterSpacing: 0.0,
                                                            useGoogleFonts:
                                                                false,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 12.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  57.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        '07.01(월) 이내 판매자 발송예정',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'noto sans',
                                                              fontSize: 10.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Divider(
                                                thickness: 1.0,
                                                color: Color(0xFFF4F4F5),
                                              ),
                                              wrapWithModel(
                                                model: _model.bannerCardModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: const BannerCardWidget(
                                                  firstLine:
                                                      '내 피부에 맞는 클렌저 찾기 테스트',
                                                  secondLine:
                                                      '건성 vs 지성 vs 민감성 타입별 스킨케어 추천 !',
                                                ),
                                              ),
                                              const Divider(
                                                thickness: 1.0,
                                                color: Color(0xFFF4F4F5),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.selectedTab =
                                                          '상품정보';
                                                      setState(() {});
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .productListChoiceChipsModel1,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          ProductListChoiceChipsWidget(
                                                        selected: _model
                                                                .selectedTab ==
                                                            '상품정보',
                                                        title: '상품정보',
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.selectedTab = '리뷰';
                                                      setState(() {});
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .productListChoiceChipsModel2,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          ProductListChoiceChipsWidget(
                                                        selected: _model
                                                                .selectedTab ==
                                                            '리뷰',
                                                        title:
                                                            '리뷰(${containerReviewsRowList.length.toString()})',
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.selectedTab =
                                                          '추천상품';
                                                      setState(() {});
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .productListChoiceChipsModel3,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          ProductListChoiceChipsWidget(
                                                        selected: _model
                                                                .selectedTab ==
                                                            '추천상품',
                                                        title: '추천상품',
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      _model.selectedTab = '문의';
                                                      setState(() {});
                                                    },
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .productListChoiceChipsModel4,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          ProductListChoiceChipsWidget(
                                                        selected: _model
                                                                .selectedTab ==
                                                            '문의',
                                                        title: '문의',
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (_model.selectedTab ==
                                                        '상품정보')
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child:
                                                            CachedNetworkImage(
                                                          fadeInDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      400),
                                                          fadeOutDuration:
                                                              const Duration(
                                                                  milliseconds:
                                                                      400),
                                                          imageUrl:
                                                              'https://picsum.photos/seed/681/600',
                                                          width: 336.0,
                                                          height: 1083.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    if (_model.selectedTab ==
                                                        '리뷰')
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              showModalBottomSheet(
                                                                isScrollControlled:
                                                                    true,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                isDismissible:
                                                                    false,
                                                                enableDrag:
                                                                    false,
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (context) {
                                                                  return GestureDetector(
                                                                    onTap: () =>
                                                                        FocusScope.of(context)
                                                                            .unfocus(),
                                                                    child:
                                                                        Padding(
                                                                      padding: MediaQuery
                                                                          .viewInsetsOf(
                                                                              context),
                                                                      child:
                                                                          ReviewBottomsheetWidget(
                                                                        getProductUid:
                                                                            widget.productUid!,
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
                                                              ).then((value) =>
                                                                  safeSetState(
                                                                      () {}));
                                                            },
                                                            text: '리뷰 작성하기',
                                                            options:
                                                                FFButtonOptions(
                                                              width: 336.0,
                                                              height: 40.0,
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color:
                                                                  Colors.white,
                                                              textStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'noto sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .electricBlue2,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                              elevation: 0.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .electricBlue2,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    if (_model.selectedTab ==
                                                        '리뷰')
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    8.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.reviewTab =
                                                                    'best';
                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                '베스트순',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      color: _model.reviewTab ==
                                                                              'best'
                                                                          ? const Color(
                                                                              0xFF2FDDF8)
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 35.0,
                                                            child:
                                                                VerticalDivider(
                                                              thickness: 1.0,
                                                              color: Color(
                                                                  0xFFE2E3E6),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets.all(
                                                                    8.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                _model.reviewTab =
                                                                    'recent';
                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                '최신순',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      color: _model.reviewTab ==
                                                                              'recent'
                                                                          ? const Color(
                                                                              0xFF2FDDF8)
                                                                          : FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    if (_model.selectedTab ==
                                                        '리뷰')
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Gap.svg',
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          height: 1.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    if (_model.selectedTab ==
                                                        '리뷰')
                                                      Builder(
                                                        builder: (context) {
                                                          final reviewList =
                                                              containerReviewsRowList
                                                                  .map((e) => e)
                                                                  .toList()
                                                                  .sortedList(
                                                                      keyOf: (e) =>
                                                                          e.createdAt,
                                                                      desc: true)
                                                                  .toList()
                                                                  .take(4)
                                                                  .toList();

                                                          return ListView
                                                              .builder(
                                                            padding:
                                                                EdgeInsets.zero,
                                                            shrinkWrap: true,
                                                            scrollDirection:
                                                                Axis.vertical,
                                                            itemCount:
                                                                reviewList
                                                                    .length,
                                                            itemBuilder: (context,
                                                                reviewListIndex) {
                                                              final reviewListItem =
                                                                  reviewList[
                                                                      reviewListIndex];
                                                              return ReviewWidget(
                                                                key: Key(
                                                                    'Keyaoc_${reviewListIndex}_of_${reviewList.length}'),
                                                                name: '1',
                                                                rating:
                                                                    reviewListItem
                                                                        .rating,
                                                                productName:
                                                                    productDetailProductsRow
                                                                        .productName!,
                                                                option: '1',
                                                                content:
                                                                    reviewListItem
                                                                        .comment!,
                                                                userProfile:
                                                                    '1',
                                                                createdAt:
                                                                    reviewListItem
                                                                        .createdAt
                                                                        .toString(),
                                                              );
                                                            },
                                                          );
                                                        },
                                                      ),
                                                    if (_model.selectedTab ==
                                                        '추천상품')
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        28.0,
                                                                        16.0,
                                                                        16.0),
                                                            child: Text(
                                                              '내가 본 상품과 비슷한 상품',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'noto sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .productItemsListModel1,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ProductItemsListWidget(
                                                                  productName:
                                                                      '1',
                                                                  discount: 1.0,
                                                                  originalPrice:
                                                                      1,
                                                                  price: 1.0,
                                                                  liked: 1,
                                                                  productImg:
                                                                      productDetailProductsRow
                                                                          .productImg,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          const Divider(
                                                            thickness: 1.0,
                                                            color: Color(
                                                                0xFFF4F4F5),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        28.0,
                                                                        16.0,
                                                                        16.0),
                                                            child: Text(
                                                              '이런 상품은 어때요 ?',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'noto sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        60.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                wrapWithModel(
                                                                  model: _model
                                                                      .productItemsListModel2,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      ProductItemsListWidget(
                                                                    productName:
                                                                        '1',
                                                                    discount:
                                                                        1.0,
                                                                    originalPrice:
                                                                        1,
                                                                    price: 1.0,
                                                                    liked: 1,
                                                                    productImg:
                                                                        productDetailProductsRow
                                                                            .productImg,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    if (_model.selectedTab ==
                                                        '문의')
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        28.0,
                                                                        0.0,
                                                                        16.0),
                                                                child: Text(
                                                                  '자주 묻는 질문',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'noto sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            30.0,
                                                                            0.0,
                                                                            20.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        context.pushNamed(
                                                                            'product_qna');
                                                                      },
                                                                      child:
                                                                          Text(
                                                                        '전체보기',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'noto sans',
                                                                              color: FlutterFlowTheme.of(context).electricBlue2,
                                                                              fontSize: functions.setFontSize(12.0),
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        28.0,
                                                                        16.0,
                                                                        16.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    context.pushNamed(
                                                                        'product_qna');
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .chevron_right,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .electricBlue2,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .productQNAModel1,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ProductQNAWidget(
                                                                  isSolved:
                                                                      false,
                                                                  userId: '1',
                                                                  questionDetails:
                                                                      'ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ',
                                                                  createdAt:
                                                                      getCurrentTimestamp,
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .productQNAModel2,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    ProductQNAWidget(
                                                                  isSolved:
                                                                      false,
                                                                  userId: '1',
                                                                  questionDetails:
                                                                      '1',
                                                                  createdAt:
                                                                      getCurrentTimestamp,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                '반품/교환',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      fontSize:
                                                                          functions
                                                                              .setFontSize(12.0),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              Text(
                                                                '관련 문의는 ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      fontSize:
                                                                          functions
                                                                              .setFontSize(12.0),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              Text(
                                                                '1:1 문의',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'noto sans',
                                                                      fontSize:
                                                                          functions
                                                                              .setFontSize(12.0),
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            4.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '를 이용해주세요',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'noto sans',
                                                                        fontSize:
                                                                            functions.setFontSize(12.0),
                                                                        letterSpacing:
                                                                            0.0,
                                                                        useGoogleFonts:
                                                                            false,
                                                                      ),
                                                                ),
                                                              ),
                                                              const Icon(
                                                                Icons
                                                                    .chevron_right,
                                                                color: Color(
                                                                    0xFF1C1B1F),
                                                                size: 24.0,
                                                              ),
                                                            ],
                                                          ),
                                                          const Divider(
                                                            thickness: 2.0,
                                                            color: Color(
                                                                0xFFE2E3E6),
                                                          ),
                                                          Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                1.0,
                                                            height: 280.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          22.0,
                                                                          20.0,
                                                                          0.0,
                                                                          7.0),
                                                                      child:
                                                                          Text(
                                                                        '판매자',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'noto sans',
                                                                              color: const Color(0xFF757884),
                                                                              fontSize: functions.setFontSize(12.0),
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.92,
                                                                      height:
                                                                          100.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: const Color(
                                                                            0xFFF4F4F5),
                                                                        borderRadius:
                                                                            BorderRadius.circular(16.0),
                                                                      ),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                22.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Hello World',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'noto sans',
                                                                                    fontSize: functions.setFontSize(12.0),
                                                                                    letterSpacing: 0.0,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                22.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Hello World',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'noto sans',
                                                                                    fontSize: functions.setFontSize(24.0),
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    useGoogleFonts: false,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                22.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                const Icon(
                                                                                  Icons.schedule,
                                                                                  color: Color(0xFF1C1B1F),
                                                                                  size: 12.0,
                                                                                ),
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Hello World',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'noto sans',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: functions.setFontSize(10.0),
                                                                                          letterSpacing: 0.0,
                                                                                          useGoogleFonts: false,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Material(
                          color: Colors.transparent,
                          elevation: 0.0,
                          child: Container(
                            width: double.infinity,
                            height: 52.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4.0,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    0.0,
                                    2.0,
                                  ),
                                )
                              ],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                  size: 24.0,
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        isDismissible: false,
                                        enableDrag: false,
                                        useSafeArea: true,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: ReviewBottomsheetWidget(
                                                getProductUid:
                                                    widget.productUid!,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    text: '선물하기',
                                    icon: Icon(
                                      Icons.card_giftcard,
                                      color: FlutterFlowTheme.of(context)
                                          .electricBlue2,
                                      size: 18.0,
                                    ),
                                    options: FFButtonOptions(
                                      width: 123.0,
                                      height: 38.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: Colors.white,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: FlutterFlowTheme.of(context)
                                                .electricBlue2,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .electricBlue2,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      4.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        enableDrag: false,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => FocusScope.of(context)
                                                .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child:
                                                  ProductDetailBottomsheetWidget(
                                                maker: productDetailProductsRow
                                                    ?.productMaker,
                                                productName:
                                                    productDetailProductsRow
                                                        ?.productName,
                                                price: productDetailProductsRow
                                                    ?.productPrice,
                                                discount:
                                                    productDetailProductsRow
                                                        ?.discount,
                                                productUid:
                                                    productDetailProductsRow
                                                        ?.productUid,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    text: '구매하기',
                                    options: FFButtonOptions(
                                      width: 166.0,
                                      height: 38.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .electricBlue2,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 0.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 0.0,
                                      ),
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (FFAppState().searchBar)
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: wrapWithModel(
                        model: _model.searchBarModel,
                        updateCallback: () => setState(() {}),
                        child: const SearchBarWidget(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
