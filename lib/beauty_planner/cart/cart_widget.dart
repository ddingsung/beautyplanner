import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/cart_product_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'cart_model.dart';
export 'cart_model.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({
    super.key,
    required this.userUid,
  });

  final String? userUid;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  late CartModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CartModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResulth7a = await GetUserCartCall.call(
        userUidInputParam: widget.userUid,
      );

      if ((_model.apiResulth7a?.succeeded ?? true)) {
        _model.cartList = getJsonField(
          (_model.apiResulth7a?.jsonBody ?? ''),
          r'''$''',
          true,
        )!
            .toList()
            .cast<dynamic>();
        setState(() {});
        _model.count = getJsonField(
          (_model.apiResulth7a?.jsonBody ?? ''),
          r'''$..cart_quantity''',
          true,
        )!
            .toList()
            .cast<int>();
        setState(() {});
      }
    });

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();

    _model.textController3 ??= TextEditingController();
    _model.textFieldFocusNode3 ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          _model.textController3?.text = '0';
        }));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<ApiCallResponse>(
      future: GetUserCartCall.call(
        userUidInputParam: currentUserUid,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
        final cartGetUserCartResponse = snapshot.data!;

        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(55.0),
              child: AppBar(
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                leading: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 55.0,
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 24.0,
                  ),
                  onPressed: () async {
                    context.pop();
                  },
                ),
                actions: [
                  FlutterFlowIconButton(
                    borderRadius: 0.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.search_sharp,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                  FlutterFlowIconButton(
                    borderRadius: 0.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: Icon(
                      Icons.notifications_none,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  title: Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Text(
                      '장바구니',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            fontSize: functions.setFontSize(16.0),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
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
                children: [
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
                              child: Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue1 ??= true,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue1 = newValue!);
                                  },
                                  side: BorderSide(
                                    width: 2,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                  activeColor: FlutterFlowTheme.of(context)
                                      .electricBlue2,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                            ),
                            Text(
                              '모두 선택 (?개)',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'noto sans',
                                    color: const Color(0xFF5D5F69),
                                    fontSize: functions.setFontSize(10.0),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                            Text(
                              '선택삭제',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'noto sans',
                                    color: const Color(0xFF5D5F69),
                                    fontSize: functions.setFontSize(10.0),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ],
                        ),
                        Builder(
                          builder: (context) {
                            final category = getJsonField(
                              cartGetUserCartResponse.jsonBody,
                              r'''$''',
                            ).toList();

                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: category.length,
                              itemBuilder: (context, categoryIndex) {
                                final categoryItem = category[categoryIndex];
                                return Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 24.0),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.92,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 0.0, 0.0),
                                                  child: Icon(
                                                    Icons
                                                        .shopping_cart_outlined,
                                                    color: Color(0xFF5D5F69),
                                                    size: 16.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          4.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      categoryItem,
                                                      r'''$.product_category''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'noto sans',
                                                          color:
                                                              const Color(0xFF5D5F69),
                                                          fontSize: functions
                                                              .setFontSize(
                                                                  14.0),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const StyledDivider(
                                            thickness: 1.0,
                                            color: Color(0xFFABACB5),
                                            lineStyle: DividerLineStyle.dashed,
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final productList1 =
                                                  _model.cartList
                                                      .where((e) =>
                                                          getJsonField(
                                                            categoryItem,
                                                            r'''$.cart_category''',
                                                          ) ==
                                                          getJsonField(
                                                            e,
                                                            r'''$.cart_category''',
                                                          ))
                                                      .toList()
                                                      .map((e) => e)
                                                      .toList();

                                              return ListView.builder(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: productList1.length,
                                                itemBuilder: (context,
                                                    productList1Index) {
                                                  final productList1Item =
                                                      productList1[
                                                          productList1Index];
                                                  return wrapWithModel(
                                                    model: _model
                                                        .cartProductModels
                                                        .getModel(
                                                      productList1Index
                                                          .toString(),
                                                      productList1Index,
                                                    ),
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: CartProductWidget(
                                                      key: Key(
                                                        'Keylee_${productList1Index.toString()}',
                                                      ),
                                                      uid: getJsonField(
                                                        productList1Item,
                                                        r'''$.product_uid''',
                                                      ).toString(),
                                                      parameter2: getJsonField(
                                                        productList1Item,
                                                        r'''$.product_name''',
                                                      ),
                                                      parameter3:
                                                          productList1Index,
                                                      parameter4: getJsonField(
                                                        productList1Item,
                                                        r'''$.cart_quantity''',
                                                      ),
                                                      parameter5: getJsonField(
                                                        productList1Item,
                                                        r'''$.product_price''',
                                                      ),
                                                      parameter6: getJsonField(
                                                        productList1Item,
                                                        r'''$.product_discount''',
                                                      ),
                                                      callbackTest: () async {
                                                        await CartTable()
                                                            .update(
                                                          data: {
                                                            'quantity':
                                                                (int var1) {
                                                              return var1++;
                                                            }(getJsonField(
                                                              productList1Item,
                                                              r'''$.cart_quantity''',
                                                            )),
                                                          },
                                                          matchingRows:
                                                              (rows) => rows.eq(
                                                            'product_uid',
                                                            getJsonField(
                                                              productList1Item,
                                                              r'''$.product_uid''',
                                                            ).toString(),
                                                          ),
                                                        );

                                                        setState(() {});
                                                      },
                                                    ),
                                                  );
                                                },
                                              );
                                            },
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 16.0, 0.0, 16.0),
                                                child: Text(
                                                  '총 수량 ${GetUserCartCall.cartProductUid(
                                                    cartGetUserCartResponse
                                                        .jsonBody,
                                                  )?.length.toString()}개',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'noto sans',
                                                        color:
                                                            const Color(0xFF5D5F69),
                                                        fontSize: functions
                                                            .setFontSize(12.0),
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 18.0, 12.0),
                                                child: Text(
                                                  formatNumber(
                                                    FFAppState().cartTotalPrice,
                                                    formatType:
                                                        FormatType.decimal,
                                                    decimalType:
                                                        DecimalType.automatic,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'noto sans',
                                                        color: Colors.black,
                                                        fontSize: functions
                                                            .setFontSize(16.0),
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        const Divider(
                          thickness: 1.0,
                          color: Color(0xFFABACB5),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '결제 금액',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'noto sans',
                                      fontSize: functions.setFontSize(16.0),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 8.0, 16.0, 8.0),
                              child: Text(
                                '상품금액',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'noto sans',
                                      color: const Color(0xFF5D5F69),
                                      fontSize: functions.setFontSize(12.0),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 16.0, 8.0),
                              child: Text(
                                '${formatNumber(
                                  functions.calculateTotalPrice(getJsonField(
                                    cartGetUserCartResponse.jsonBody,
                                    r'''$''',
                                    true,
                                  )),
                                  formatType: FormatType.decimal,
                                  decimalType: DecimalType.automatic,
                                )}원',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'noto sans',
                                      fontSize: functions.setFontSize(14.0),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 4.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 16.0, 8.0),
                                child: Text(
                                  '배송비',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'noto sans',
                                        color: const Color(0xFF5D5F69),
                                        fontSize: functions.setFontSize(12.0),
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: SvgPicture.asset(
                                  'assets/images/087p0__.svg',
                                  width: 45.0,
                                  height: 20.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(1.0, 0.0),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 16.0, 8.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            fontSize:
                                                functions.setFontSize(14.0),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const StyledDivider(
                          thickness: 1.0,
                          color: Color(0xFFABACB5),
                          lineStyle: DividerLineStyle.dashed,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                '총 결제금액',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'noto sans',
                                      color: const Color(0xFF2E2E33),
                                      fontSize: functions.setFontSize(14.0),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                'Hello World',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'noto sans',
                                      color: const Color(0xFF08CEED),
                                      fontSize: functions.setFontSize(16.0),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 24.0, 0.0, 16.0),
                                    child: Text(
                                      '배송정보',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF2E2E33),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 16.0, 24.0),
                                    child: Text(
                                      '변경',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF08CEED),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 12.0, 0.0, 8.0),
                                    child: Text(
                                      '메디트리',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF2E2E33),
                                            fontSize:
                                                functions.setFontSize(14.0),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      '주소',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF2E2E33),
                                            fontSize:
                                                functions.setFontSize(12.0),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 8.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '이름',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF5D5F69),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Text(
                                      '번호',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF5D5F69),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Theme(
                                      data: ThemeData(
                                        checkboxTheme: CheckboxThemeData(
                                          visualDensity: VisualDensity.compact,
                                          materialTapTargetSize:
                                              MaterialTapTargetSize.shrinkWrap,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                        ),
                                        unselectedWidgetColor:
                                            const Color(0xFFC6C7CD),
                                      ),
                                      child: Checkbox(
                                        value: _model
                                            .addressSaveCheckBoxValue ??= true,
                                        onChanged: (newValue) async {
                                          setState(() =>
                                              _model.addressSaveCheckBoxValue =
                                                  newValue!);
                                        },
                                        side: const BorderSide(
                                          width: 2,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .electricBlue2,
                                        checkColor:
                                            FlutterFlowTheme.of(context).info,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '기본 배송지로 저장',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'noto sans',
                                          color: const Color(0xFF2E2E33),
                                          fontSize: functions.setFontSize(12.0),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.96,
                                    height: 24.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(4.0),
                                      border: Border.all(
                                        color: const Color(0xFFC6C7CD),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 0.0, 0.0),
                                            child: TextFormField(
                                              controller:
                                                  _model.textController1,
                                              focusNode:
                                                  _model.textFieldFocusNode1,
                                              autofocus: false,
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                isDense: true,
                                                labelStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'noto sans',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                hintText: '배송시 요청사항을 선택해주세요',
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodySmall
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      color: const Color(0xFFC6C7CD),
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                errorBorder: InputBorder.none,
                                                focusedErrorBorder:
                                                    InputBorder.none,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'noto sans',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                              validator: _model
                                                  .textController1Validator
                                                  .asValidator(context),
                                            ),
                                          ),
                                        ),
                                        const Icon(
                                          Icons.arrow_drop_down,
                                          color: Color(0xFFC6C7CD),
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.96,
                                    height: 192.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderRadius: BorderRadius.circular(4.0),
                                      border: Border.all(
                                        color: const Color(0xFFC6C7CD),
                                        width: 1.0,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 0.0, 0.0),
                                                child: TextFormField(
                                                  controller:
                                                      _model.textController2,
                                                  focusNode: _model
                                                      .textFieldFocusNode2,
                                                  autofocus: false,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    isDense: true,
                                                    labelStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'noto sans',
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    hintText:
                                                        '배송시 요청사항을 선택해주세요',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'noto sans',
                                                          color:
                                                              const Color(0xFFC6C7CD),
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                    enabledBorder:
                                                        InputBorder.none,
                                                    focusedBorder:
                                                        InputBorder.none,
                                                    errorBorder:
                                                        InputBorder.none,
                                                    focusedErrorBorder:
                                                        InputBorder.none,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'noto sans',
                                                        letterSpacing: 0.0,
                                                        useGoogleFonts: false,
                                                      ),
                                                  validator: _model
                                                      .textController2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_drop_up,
                                              color: Color(0xFF2E2E33),
                                              size: 24.0,
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          height: 3.0,
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 4.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '문 앞에 놔주세요',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      color: const Color(0xFF2E2E33),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '경비실에 맡겨주세요',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      color: const Color(0xFF2E2E33),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '문 앞에 놓고 벨 눌러주세요',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      color: const Color(0xFF2E2E33),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '배송 전에 문자 주세요',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      color: const Color(0xFF2E2E33),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '직접 입력',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'noto sans',
                                                      color: const Color(0xFF2E2E33),
                                                      fontSize: 12.0,
                                                      letterSpacing: 0.0,
                                                      useGoogleFonts: false,
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
                        const Divider(
                          height: 1.0,
                          thickness: 4.0,
                          color: Color(0xFFE2E3E6),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 51.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        '주문자',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              color: const Color(0xFF2E2E33),
                                              fontSize:
                                                  functions.setFontSize(14.0),
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
                        const Divider(
                          height: 1.0,
                          thickness: 4.0,
                          color: Color(0xFFE2E3E6),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 51.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 16.0, 0.0, 16.0),
                                      child: Text(
                                        '주문상품',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              color: const Color(0xFF2E2E33),
                                              fontSize:
                                                  functions.setFontSize(14.0),
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
                        const Divider(
                          height: 1.0,
                          thickness: 4.0,
                          color: Color(0xFFE2E3E6),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 1.0,
                                height: 51.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        '쿠폰',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              color: const Color(0xFF2E2E33),
                                              fontSize:
                                                  functions.setFontSize(14.0),
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 32.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFF4F4F5),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '쿠폰코드가 있으신가요?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'noto sans',
                                          color: const Color(0xFF90929D),
                                          fontSize: functions.setFontSize(10.0),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFF90929D),
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 1.0,
                          thickness: 4.0,
                          color: Color(0xFFE2E3E6),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 127.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Text(
                                      '포인트',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF2E2E33),
                                            fontSize:
                                                functions.setFontSize(14.0),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController3,
                                        focusNode: _model.textFieldFocusNode3,
                                        autofocus: false,
                                        readOnly: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          isDense: true,
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'noto sans',
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .override(
                                                    fontFamily: 'noto sans',
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFC6C7CD),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Color(0xFFC6C7CD),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(4.0),
                                          ),
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 12.0, 8.0, 12.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              fontSize:
                                                  functions.setFontSize(14.0),
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                        validator: _model
                                            .textController3Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 16.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: '전액 사용',
                                      options: FFButtonOptions(
                                        width: 60.0,
                                        height: 32.0,
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Colors.white,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'noto sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .electricBlue2,
                                              fontSize: 12.0,
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
                                        borderRadius:
                                            BorderRadius.circular(6.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '사용 가능 포인트',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF2E2E33),
                                            fontSize:
                                                functions.setFontSize(10.0),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              color: const Color(0xFF2FDDF8),
                                              fontSize:
                                                  functions.setFontSize(10.0),
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
                        const Divider(
                          height: 1.0,
                          thickness: 4.0,
                          color: Color(0xFFE2E3E6),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 475.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 24.0, 0.0, 24.0),
                                    child: Text(
                                      '결제수단',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF2E2E33),
                                            fontSize:
                                                functions.setFontSize(16.0),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Stack(
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowRadioButton(
                                          options: [
                                            '카드',
                                            '무통장입금',
                                            '         네이버페이',
                                            '         카카오페이',
                                            '핸드폰'
                                          ].toList(),
                                          onChanged: (val) => setState(() {}),
                                          controller: _model
                                                  .radioButtonValueController ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 30.0,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                    fontFamily: 'noto sans',
                                                    color: const Color(0xFF2E2E33),
                                                    letterSpacing: 0.0,
                                                    useGoogleFonts: false,
                                                  ),
                                          textPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  40.0, 0.0, 0.0, 0.0),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .electricBlue2,
                                          inactiveRadioButtonColor:
                                              const Color(0xFFC6C7CD),
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 2.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  52.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.credit_card,
                                            color: Color(0xFF1C1B1F),
                                            size: 24.0,
                                          ),
                                        ),
                                        const Divider(
                                          height: 6.0,
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  52.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.payments_outlined,
                                            color: Color(0xFF1C1B1F),
                                            size: 24.0,
                                          ),
                                        ),
                                        const Divider(
                                          height: 6.0,
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  52.0, 4.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/_1.png',
                                              width: 50.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                          height: 6.0,
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  52.0, 4.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/_2.png',
                                              width: 50.0,
                                              height: 20.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const Divider(
                                          height: 6.0,
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                        const Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  52.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.ad_units,
                                            color: Color(0xFF1C1B1F),
                                            size: 24.0,
                                          ),
                                        ),
                                        const Divider(
                                          height: 6.0,
                                          thickness: 1.0,
                                          color: Color(0xFFC6C7CD),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          16.0, 8.0, 0.0, 8.0),
                                      child: Text(
                                        '상품금액',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              color: const Color(0xFF5D5F69),
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 16.0, 8.0),
                                      child: Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              fontSize:
                                                  functions.setFontSize(14.0),
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 0.0, 8.0),
                                    child: Text(
                                      '배송비',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF5D5F69),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 16.0, 8.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            fontSize:
                                                functions.setFontSize(14.0),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 0.0, 8.0),
                                    child: Text(
                                      '쿠폰 사용',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF5D5F69),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 16.0, 8.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            fontSize:
                                                functions.setFontSize(14.0),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 8.0, 0.0, 8.0),
                                    child: Text(
                                      '포인트 사용',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF5D5F69),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 16.0, 8.0),
                                    child: Text(
                                      'Hello World',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            fontSize:
                                                functions.setFontSize(14.0),
                                            letterSpacing: 0.0,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                              const StyledDivider(
                                thickness: 1.0,
                                color: Color(0xFFC6C7CD),
                                lineStyle: DividerLineStyle.dashed,
                              ),
                              Stack(
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            16.0, 16.0, 0.0, 16.0),
                                        child: Text(
                                          '총 결제금액',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'noto sans',
                                                color: const Color(0xFF2E2E33),
                                                fontSize:
                                                    functions.setFontSize(16.0),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 16.0, 16.0),
                                        child: Text(
                                          'Hello World',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'noto sans',
                                                color: const Color(0xFF08CEED),
                                                fontSize:
                                                    functions.setFontSize(16.0),
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 45.0, 16.0, 0.0),
                                      child: Text(
                                        'Hello World',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'noto sans',
                                              color: const Color(0xFF2E2E33),
                                              fontSize:
                                                  functions.setFontSize(10.0),
                                              letterSpacing: 0.0,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 1.0,
                          thickness: 8.0,
                          color: Color(0xFFE2E3E6),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 48.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Theme(
                                data: ThemeData(
                                  checkboxTheme: CheckboxThemeData(
                                    visualDensity: VisualDensity.compact,
                                    materialTapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                  ),
                                  unselectedWidgetColor: const Color(0xFFC6C7CD),
                                ),
                                child: Checkbox(
                                  value: _model.checkboxValue2 ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        _model.checkboxValue2 = newValue!);
                                  },
                                  side: const BorderSide(
                                    width: 2,
                                    color: Color(0xFFC6C7CD),
                                  ),
                                  activeColor: FlutterFlowTheme.of(context)
                                      .electricBlue2,
                                  checkColor: FlutterFlowTheme.of(context).info,
                                ),
                              ),
                              Text(
                                '아래 내용에 모두 동의합니다. (필수)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'noto sans',
                                      color: const Color(0xFF2E2E33),
                                      fontSize: functions.setFontSize(12.0),
                                      letterSpacing: 0.0,
                                      useGoogleFonts: false,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 131.0,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF4F4F5),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Theme(
                                    data: ThemeData(
                                      checkboxTheme: CheckboxThemeData(
                                        visualDensity: VisualDensity.compact,
                                        materialTapTargetSize:
                                            MaterialTapTargetSize.shrinkWrap,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                        ),
                                      ),
                                      unselectedWidgetColor: const Color(0xFFC6C7CD),
                                    ),
                                    child: Checkbox(
                                      value: _model.checkboxValue3 ??= false,
                                      onChanged: (newValue) async {
                                        setState(() =>
                                            _model.checkboxValue3 = newValue!);
                                      },
                                      side: const BorderSide(
                                        width: 2,
                                        color: Color(0xFFC6C7CD),
                                      ),
                                      activeColor: FlutterFlowTheme.of(context)
                                          .electricBlue2,
                                      checkColor:
                                          FlutterFlowTheme.of(context).info,
                                    ),
                                  ),
                                  Text(
                                    '개인정보 수집 이요 및 3자 제공 동의 (필수)',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'noto sans',
                                          color: const Color(0xFF90929D),
                                          fontSize: functions.setFontSize(12.0),
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                  const Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Color(0xFF90929D),
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: '0원 주문하기',
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 0.94,
                          height: 56.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).electricBlue2,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'noto sans',
                                    color: Colors.white,
                                    fontSize: functions.setFontSize(16.0),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                          elevation: 0.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
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
