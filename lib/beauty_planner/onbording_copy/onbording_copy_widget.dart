import '/component/beaury/beaury_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'onbording_copy_model.dart';
export 'onbording_copy_model.dart';

class OnbordingCopyWidget extends StatefulWidget {
  const OnbordingCopyWidget({super.key});

  @override
  State<OnbordingCopyWidget> createState() => _OnbordingCopyWidgetState();
}

class _OnbordingCopyWidgetState extends State<OnbordingCopyWidget>
    with TickerProviderStateMixin {
  late OnbordingCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnbordingCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1400));
      _model.firstText = FlutterFlowTheme.of(context).electricBlue2;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 100));
      _model.firstImg = !_model.firstImg;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 500));
      _model.firstText = Colors.white;
      _model.secondText = FlutterFlowTheme.of(context).electricBlue2;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 50));
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!
            .controller
            .forward(from: 0.0);
      }
      await Future.delayed(const Duration(milliseconds: 1000));
      _model.secondText = Colors.white;
      _model.thirdText = FlutterFlowTheme.of(context).electricBlue2;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 2100));
      _model.firstViewText = !_model.firstViewText;
      setState(() {});
      _model.secondViewText = !_model.secondViewText;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 1000));
      _model.secondViewText = !_model.secondViewText;
      setState(() {});
      _model.viewLogo = !_model.viewLogo;
      setState(() {});
      await Future.delayed(const Duration(milliseconds: 1000));
      _model.viewLogo = !_model.viewLogo;
      setState(() {});
      if (animationsMap['stackOnActionTriggerAnimation'] != null) {
        await animationsMap['stackOnActionTriggerAnimation']!
            .controller
            .forward(from: 0.0);
      }
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1500.0.ms,
            begin: const Offset(29.0, 29.0),
            end: const Offset(1.0, 1.0),
          ),
        ],
      ),
      'imageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 390.0.ms,
            begin: 0.0,
            end: 0.06,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(70.0, 0.0),
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 1390.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 0.04,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 1390.0.ms,
            duration: 300.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(74.0, -13.0),
          ),
          MoveEffect(
            curve: Curves.easeIn,
            delay: 3000.0.ms,
            duration: 100.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-28.0, -37.0),
          ),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 3000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: -0.04,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 3100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(0.7, 0.7),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 3900.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-60.0, 51.0),
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 3900.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: -0.04,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.7, 1.7),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 4000.0.ms,
            duration: 600.0.ms,
            begin: 1.0,
            end: 0.0,
          ),
        ],
      ),
      'stackOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Align(
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 360.0,
                      height: 800.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).electricBlue2,
                      ),
                    ),
                  ),
                ],
              ),
              if (_model.firstImg)
                Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(54.0, 305.0, 0.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: SvgPicture.asset(
                      'assets/images/Onboarding_cat.svg',
                      width: 99.0,
                      height: 94.0,
                      fit: BoxFit.cover,
                    ),
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation']!),
                ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(54.0, 305.0, 0.0, 0.0),
                child: Hero(
                  tag: 'heroTest',
                  transitionOnUserGestures: true,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: SvgPicture.asset(
                      'assets/images/Onboarding_cat.svg',
                      width: 99.0,
                      height: 94.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['imageOnActionTriggerAnimation']!,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 340.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (_model.firstViewText)
                      AnimatedDefaultTextStyle(
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'noto sans',
                              color: valueOrDefault<Color>(
                                _model.firstText,
                                Colors.white,
                              ),
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.easeIn,
                        child: const Text(
                          'No.1 AI',
                        ),
                      ),
                    if (_model.firstViewText)
                      AnimatedDefaultTextStyle(
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'noto sans',
                              color: valueOrDefault<Color>(
                                _model.secondText,
                                Colors.white,
                              ),
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        duration: const Duration(milliseconds: 900),
                        curve: Curves.easeIn,
                        child: const Text(
                          'Beauty',
                        ),
                      ),
                    if (_model.firstViewText)
                      AnimatedDefaultTextStyle(
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'noto sans',
                              color: valueOrDefault<Color>(
                                _model.thirdText,
                                Colors.white,
                              ),
                              letterSpacing: 0.0,
                              useGoogleFonts: false,
                            ),
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeIn,
                        child: const Text(
                          'Platform',
                        ),
                      ),
                  ].divide(const SizedBox(width: 15.0)),
                ),
              ),
              if (!_model.secondViewText)
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 44.0),
                    child: Text(
                      '오직 나만을 위한\nAI 뷰티플래너',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'noto sans',
                            color: Colors.white,
                            fontSize: 26.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ),
              if (!_model.viewLogo)
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 44.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/Onborading_Logo.svg',
                        width: 212.0,
                        height: 108.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              if (_model.page2)
                Stack(
                  children: [
                    Container(
                      width: 360.0,
                      height: 800.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 103.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '오직 나만을 위한',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'noto sans',
                                        fontSize: 20.0,
                                        letterSpacing: 0.0,
                                        useGoogleFonts: false,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AI 뷰티플래너',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'noto sans',
                                      fontSize: 20.0,
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
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/Logo_Header.svg',
                                    width: 182.0,
                                    height: 66.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          wrapWithModel(
                            model: _model.beauryModel,
                            updateCallback: () => setState(() {}),
                            child: const BeauryWidget(),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 43.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: SvgPicture.asset(
                                    'assets/images/Property=kakao.svg',
                                    width: 335.0,
                                    height: 48.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(16.0),
                                    child: Image.asset(
                                      'assets/images/Property=Default_stroke.png',
                                      width: 335.0,
                                      height: 48.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.goNamed('createID');
                                    },
                                    child: Text(
                                      '이메일로 로그인',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'noto sans',
                                            color: const Color(0xFF90929D),
                                            fontSize: 10.0,
                                            letterSpacing: 0.0,
                                            decoration:
                                                TextDecoration.underline,
                                            useGoogleFonts: false,
                                          ),
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
                ).animateOnActionTrigger(
                  animationsMap['stackOnActionTriggerAnimation']!,
                ),
            ],
          ),
        ),
      ),
    );
  }
}