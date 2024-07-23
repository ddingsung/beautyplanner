import '/backend/supabase/supabase.dart';
import '/component/banner_card/banner_card_widget.dart';
import '/component/nav_bar1/nav_bar1_widget.dart';
import '/component/product_items_list/product_items_list_widget.dart';
import '/component/product_list_choice_chips/product_list_choice_chips_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'product_list_model.dart';
export 'product_list_model.dart';

class ProductListWidget extends StatefulWidget {
  const ProductListWidget({super.key});

  @override
  State<ProductListWidget> createState() => _ProductListWidgetState();
}

class _ProductListWidgetState extends State<ProductListWidget> {
  late ProductListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().selectedProductCategory = '맞춤추천';
      setState(() {});
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, _) => [
            SliverAppBar(
              pinned: true,
              floating: false,
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              actions: const [],
              flexibleSpace: FlexibleSpaceBar(
                title: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pop();
                        },
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF1C1B1F),
                          size: 24.0,
                        ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Icon(
                        Icons.add_a_photo_sharp,
                        color: Color(0xFF90929D),
                        size: 24.0,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                      child: Container(
                        width: 202.0,
                        height: 28.0,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF4F4F5),
                        ),
                        child: TextFormField(
                          controller: _model.textController,
                          focusNode: _model.textFieldFocusNode,
                          autofocus: false,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  color: const Color(0xFFABACB5),
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            hintText: '뷰리픽 다이어트 꿀템',
                            hintStyle: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'noto sans',
                                  fontSize: 10.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            errorBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            focusedErrorBorder: UnderlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0x00000000),
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 18.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    fontSize: 10.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: SvgPicture.asset(
                        'assets/images/Button_Search.svg',
                        width: 34.0,
                        height: 28.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 12.0, 0.0),
                      child: Icon(
                        Icons.favorite_border,
                        color: Color(0xFF1C1B1F),
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
                centerTitle: false,
                expandedTitleScale: 1.0,
              ),
              elevation: 0.0,
            )
          ],
          body: Builder(
            builder: (context) {
              return SafeArea(
                top: false,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().selectedProductCategory =
                                          '맞춤추천';
                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.productListChoiceChipsModel1,
                                      updateCallback: () => setState(() {}),
                                      child: ProductListChoiceChipsWidget(
                                        selected: FFAppState()
                                                .selectedProductCategory ==
                                            '맞춤추천',
                                        title: '맞춤추천',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().selectedProductCategory =
                                          '다이어트';
                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.productListChoiceChipsModel2,
                                      updateCallback: () => setState(() {}),
                                      child: ProductListChoiceChipsWidget(
                                        selected: FFAppState()
                                                .selectedProductCategory ==
                                            '다이어트',
                                        title: '다이어트',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().selectedProductCategory =
                                          '스킨케어';
                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.productListChoiceChipsModel3,
                                      updateCallback: () => setState(() {}),
                                      child: ProductListChoiceChipsWidget(
                                        selected: FFAppState()
                                                .selectedProductCategory ==
                                            '스킨케어',
                                        title: '스킨케어',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().selectedProductCategory =
                                          '체형교정';
                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.productListChoiceChipsModel4,
                                      updateCallback: () => setState(() {}),
                                      child: ProductListChoiceChipsWidget(
                                        selected: FFAppState()
                                                .selectedProductCategory ==
                                            '체형교정',
                                        title: '체형교정',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().selectedProductCategory =
                                          '헤어';
                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.productListChoiceChipsModel5,
                                      updateCallback: () => setState(() {}),
                                      child: ProductListChoiceChipsWidget(
                                        selected: FFAppState()
                                                .selectedProductCategory ==
                                            '헤어',
                                        title: '헤어',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().selectedProductCategory =
                                          '패션';
                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.productListChoiceChipsModel6,
                                      updateCallback: () => setState(() {}),
                                      child: ProductListChoiceChipsWidget(
                                        selected: FFAppState()
                                                .selectedProductCategory ==
                                            '패션',
                                        title: '패션',
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().selectedProductCategory =
                                          '식단';
                                      setState(() {});
                                    },
                                    child: wrapWithModel(
                                      model:
                                          _model.productListChoiceChipsModel7,
                                      updateCallback: () => setState(() {}),
                                      child: ProductListChoiceChipsWidget(
                                        selected: FFAppState()
                                                .selectedProductCategory ==
                                            '식단',
                                        title: '식단',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 24.0, 0.0, 16.0),
                                      child: Text(
                                        '인기 원픽 ! 홍길동님 맞춤 추천 상품',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                FutureBuilder<List<ProductsRow>>(
                                  future: ProductsTable().queryRows(
                                    queryFn: (q) =>
                                        q.order('id', ascending: true),
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
                                    List<ProductsRow> rowProductsRowList =
                                        snapshot.data!;

                                    return SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: List.generate(
                                            rowProductsRowList.length,
                                            (rowIndex) {
                                          final rowProductsRow =
                                              rowProductsRowList[rowIndex];
                                          return InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              context.pushNamed(
                                                'product_detail',
                                                queryParameters: {
                                                  'productUid': serializeParam(
                                                    rowProductsRow.productUid,
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: wrapWithModel(
                                              model: _model
                                                  .productItemsListModels1
                                                  .getModel(
                                                rowProductsRow.id.toString(),
                                                rowIndex,
                                              ),
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: ProductItemsListWidget(
                                                key: Key(
                                                  'Keydxr_${rowProductsRow.id.toString()}',
                                                ),
                                                productName:
                                                    rowProductsRow.productName!,
                                                discount:
                                                    rowProductsRow.discount!,
                                                originalPrice: rowProductsRow
                                                    .productPrice!,
                                                price: (rowProductsRow
                                                        .productPrice!) -
                                                    ((rowProductsRow
                                                            .productPrice!) *
                                                        ((rowProductsRow
                                                                .discount!) /
                                                            100)),
                                                liked: rowProductsRow.like!,
                                              ),
                                            ),
                                          );
                                        }),
                                      ),
                                    );
                                  },
                                ),
                                Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 17.0, 0.0, 17.0),
                                    child: wrapWithModel(
                                      model: _model.bannerCardModel,
                                      updateCallback: () => setState(() {}),
                                      child: const BannerCardWidget(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 60.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: FutureBuilder<List<ProductsRow>>(
                                    future: ProductsTable().queryRows(
                                      queryFn: (q) => q,
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
                                      List<ProductsRow>
                                          gridViewProductsRowList =
                                          snapshot.data!;

                                      return GridView.builder(
                                        padding: EdgeInsets.zero,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 10.0,
                                          mainAxisSpacing: 10.0,
                                          childAspectRatio: 0.55,
                                        ),
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount:
                                            gridViewProductsRowList.length,
                                        itemBuilder: (context, gridViewIndex) {
                                          final gridViewProductsRow =
                                              gridViewProductsRowList[
                                                  gridViewIndex];
                                          return ProductItemsListWidget(
                                            key: Key(
                                                'Keyp3m_${gridViewIndex}_of_${gridViewProductsRowList.length}'),
                                            productName: gridViewProductsRow
                                                .productName!,
                                            discount:
                                                gridViewProductsRow.discount!,
                                            originalPrice: gridViewProductsRow
                                                .productPrice!,
                                            price: (gridViewProductsRow
                                                    .productPrice!) -
                                                ((gridViewProductsRow
                                                        .productPrice!) *
                                                    ((gridViewProductsRow
                                                            .discount!) /
                                                        100)),
                                            liked: gridViewProductsRow.like!,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, 1.0),
                      child: wrapWithModel(
                        model: _model.navBar1Model,
                        updateCallback: () => setState(() {}),
                        child: const NavBar1Widget(),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
