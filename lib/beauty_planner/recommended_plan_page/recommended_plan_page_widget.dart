import '/component/nav_bar1/nav_bar1_widget.dart';
import '/component/plan_check/plan_check_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'recommended_plan_page_model.dart';
export 'recommended_plan_page_model.dart';

class RecommendedPlanPageWidget extends StatefulWidget {
  const RecommendedPlanPageWidget({super.key});

  @override
  State<RecommendedPlanPageWidget> createState() =>
      _RecommendedPlanPageWidgetState();
}

class _RecommendedPlanPageWidgetState extends State<RecommendedPlanPageWidget> {
  late RecommendedPlanPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecommendedPlanPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
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
                size: 25.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            actions: [
              FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
              FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'AI 플래너',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'noto sans',
                      color: Colors.black,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              centerTitle: true,
              expandedTitleScale: 1.0,
            ),
            elevation: 4.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 25.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '어떤 뷰티 플랜을 원하시나요?',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'noto sans',
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '원하는 분야를 선택하세요.',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'noto sans',
                                          fontSize: 14.0,
                                          letterSpacing: 0.0,
                                          useGoogleFonts: false,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '중복 선택 가능',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'noto sans',
                                          color: const Color(0xFFABACB5),
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
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.diatCheck = !_model.diatCheck;
                                        setState(() {});
                                        if (_model.diatCheck ? true : false) {
                                          _model.addToCheckedList('다이어트');
                                          setState(() {});
                                        } else {
                                          _model.removeFromCheckedList('다이어트');
                                          setState(() {});
                                        }
                                      },
                                      child: wrapWithModel(
                                        model: _model.planCheckModel1,
                                        updateCallback: () => setState(() {}),
                                        child: PlanCheckWidget(
                                          parameter1: _model.diatCheck,
                                          text: '다이어트',
                                          fillColor: _model.diatCheck
                                              ? '#C4F5FD'
                                              : '#E2E3E6',
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.skincareCheck =
                                          !_model.skincareCheck;
                                      setState(() {});
                                      if (_model.skincareCheck ? true : false) {
                                        _model.addToCheckedList('스킨케어');
                                        setState(() {});
                                      } else {
                                        _model.removeFromCheckedList('스킨케어');
                                        setState(() {});
                                      }
                                    },
                                    child: wrapWithModel(
                                      model: _model.planCheckModel2,
                                      updateCallback: () => setState(() {}),
                                      child: PlanCheckWidget(
                                        parameter1: _model.skincareCheck,
                                        text: '스킨케어',
                                        fillColor: _model.skincareCheck
                                            ? '#C4F5FD'
                                            : '#E2E3E6',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.bodyCheck = !_model.bodyCheck;
                                        setState(() {});
                                        if (_model.bodyCheck ? true : false) {
                                          _model.addToCheckedList('체형교정');
                                          setState(() {});
                                        } else {
                                          _model.removeFromCheckedList('체형교정');
                                          setState(() {});
                                        }
                                      },
                                      child: wrapWithModel(
                                        model: _model.planCheckModel3,
                                        updateCallback: () => setState(() {}),
                                        child: PlanCheckWidget(
                                          parameter1: _model.bodyCheck,
                                          text: '체형교정',
                                          fillColor: _model.bodyCheck
                                              ? '#C4F5FD'
                                              : '#E2E3E6',
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.hairCheck = !_model.hairCheck;
                                      setState(() {});
                                      if (_model.hairCheck ? true : false) {
                                        _model.addToCheckedList('헤어');
                                        setState(() {});
                                      } else {
                                        _model.removeFromCheckedList('헤어');
                                        setState(() {});
                                      }
                                    },
                                    child: wrapWithModel(
                                      model: _model.planCheckModel4,
                                      updateCallback: () => setState(() {}),
                                      child: PlanCheckWidget(
                                        parameter1: _model.hairCheck,
                                        text: '    헤어',
                                        fillColor: _model.hairCheck
                                            ? '#C4F5FD'
                                            : '#E2E3E6',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.fasionCheck =
                                            !_model.fasionCheck;
                                        setState(() {});
                                        if (_model.fasionCheck ? true : false) {
                                          _model.addToCheckedList('패션');
                                          setState(() {});
                                        } else {
                                          _model.removeFromCheckedList('패션');
                                          setState(() {});
                                        }
                                      },
                                      child: wrapWithModel(
                                        model: _model.planCheckModel5,
                                        updateCallback: () => setState(() {}),
                                        child: PlanCheckWidget(
                                          parameter1: _model.fasionCheck,
                                          text: '    패션',
                                          fillColor: _model.fasionCheck
                                              ? '#C4F5FD'
                                              : '#E2E3E6',
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.foodCheck = !_model.foodCheck;
                                      setState(() {});
                                      if (_model.foodCheck ? true : false) {
                                        _model.addToCheckedList('식단');
                                        setState(() {});
                                      } else {
                                        _model.removeFromCheckedList('식단');
                                        setState(() {});
                                      }
                                    },
                                    child: wrapWithModel(
                                      model: _model.planCheckModel6,
                                      updateCallback: () => setState(() {}),
                                      child: PlanCheckWidget(
                                        parameter1: _model.foodCheck,
                                        text: '    식단',
                                        fillColor: _model.foodCheck
                                            ? '#C4F5FD'
                                            : '#E2E3E6',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FFButtonWidget(
                                    onPressed: (!_model.diatCheck &&
                                            !_model.skincareCheck &&
                                            !_model.bodyCheck &&
                                            !_model.hairCheck &&
                                            !_model.fasionCheck &&
                                            !_model.foodCheck)
                                        ? null
                                        : () async {
                                            context.pushNamed(
                                              'user_plan_result',
                                              queryParameters: {
                                                'userSelectedList':
                                                    serializeParam(
                                                  _model.checkedList,
                                                  ParamType.String,
                                                  isList: true,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                    text: '선택 완료',
                                    options: FFButtonOptions(
                                      width: 250.0,
                                      height: 56.0,
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
                                            useGoogleFonts: false,
                                          ),
                                      elevation: 0.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .electricBlue2,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                      disabledColor: Colors.white,
                                      disabledTextColor:
                                          FlutterFlowTheme.of(context)
                                              .electricBlue2,
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
        ),
      ),
    );
  }
}
