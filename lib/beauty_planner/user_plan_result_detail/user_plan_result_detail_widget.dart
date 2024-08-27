import '/component/recommend_plan_list/recommend_plan_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'user_plan_result_detail_model.dart';
export 'user_plan_result_detail_model.dart';

class UserPlanResultDetailWidget extends StatefulWidget {
  const UserPlanResultDetailWidget({super.key});

  @override
  State<UserPlanResultDetailWidget> createState() =>
      _UserPlanResultDetailWidgetState();
}

class _UserPlanResultDetailWidgetState
    extends State<UserPlanResultDetailWidget> {
  late UserPlanResultDetailModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserPlanResultDetailModel());

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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            actions: const [],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Page Title',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'noto sans',
                      color: Colors.black,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      useGoogleFonts: false,
                    ),
              ),
              centerTitle: false,
              expandedTitleScale: 1.0,
            ),
            elevation: 0.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '님의 추천 다이어트 플랜이에요',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'noto sans',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        '베스트 플랜을 추천했어요!',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'noto sans',
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        wrapWithModel(
                          model: _model.recommendPlanListModel,
                          updateCallback: () => setState(() {}),
                          child: const RecommendPlanListWidget(
                            text1: '111',
                            text2: '222',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 600.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed:
                          !(_model.recommendPlanListModel.cliked ? true : false)
                              ? null
                              : () {
                                  print('Button pressed ...');
                                },
                      text: '선택 완료',
                      options: FFButtonOptions(
                        width: 335.0,
                        height: 56.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).electricBlue2,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'noto sans',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                        elevation: 0.0,
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).electricBlue2,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(16.0),
                        disabledColor: Colors.white,
                        disabledTextColor:
                            FlutterFlowTheme.of(context).electricBlue2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
