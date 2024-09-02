import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'onbording_copy_copy2_copy_model.dart';
export 'onbording_copy_copy2_copy_model.dart';

class OnbordingCopyCopy2CopyWidget extends StatefulWidget {
  const OnbordingCopyCopy2CopyWidget({super.key});

  @override
  State<OnbordingCopyCopy2CopyWidget> createState() =>
      _OnbordingCopyCopy2CopyWidgetState();
}

class _OnbordingCopyCopy2CopyWidgetState
    extends State<OnbordingCopyCopy2CopyWidget> with TickerProviderStateMixin {
  late OnbordingCopyCopy2CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnbordingCopyCopy2CopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (loggedIn &&
          (currentPhoneNumber == '')) {
        context.goNamed('auth_phone');
      } else {
        await Future.delayed(const Duration(milliseconds: 1400));
        _model.firstText = FlutterFlowTheme.of(context).electricBlue2;
        setState(() {});
        await Future.delayed(const Duration(milliseconds: 300));
        _model.firstImg = !_model.firstImg;
        setState(() {});
        await Future.delayed(const Duration(milliseconds: 100));
        _model.firstText = Colors.white;
        _model.secondText = FlutterFlowTheme.of(context).electricBlue2;
        setState(() {});
        await Future.delayed(const Duration(milliseconds: 50));
        if (animationsMap['imageOnActionTriggerAnimation'] != null) {
          animationsMap['imageOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
        await Future.delayed(const Duration(milliseconds: 485));
        _model.secondText = Colors.white;
        _model.thirdText = FlutterFlowTheme.of(context).electricBlue2;
        setState(() {});
        await Future.delayed(const Duration(milliseconds: 1100));
        _model.firstViewText = !_model.firstViewText;
        setState(() {});
        _model.secondViewText = !_model.secondViewText;
        setState(() {});
        await Future.delayed(const Duration(milliseconds: 500));
        _model.secondViewText = !_model.secondViewText;
        setState(() {});
        _model.viewLogo = !_model.viewLogo;
        setState(() {});
        await Future.delayed(const Duration(milliseconds: 800));
        _model.viewLogo = !_model.viewLogo;
        setState(() {});
        _model.bgColor = Colors.white;
        setState(() {});
        if (animationsMap['stackOnActionTriggerAnimation'] != null) {
          await animationsMap['stackOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
      }
    });

    animationsMap.addAll({
      'imageOnPageLoadAnimation1': AnimationInfo(
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
            duration: 290.0.ms,
            begin: 0.0,
            end: 0.06,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 200.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(70.0, 0.0),
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 0.04,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 200.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(74.0, -13.0),
          ),
          MoveEffect(
            curve: Curves.easeIn,
            delay: 1500.0.ms,
            duration: 100.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-28.0, -59.0),
          ),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 1500.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: -0.04,
          ),
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 1600.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(0.7, 0.7),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 2000.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(-60.0, 51.0),
          ),
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 2000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: -0.04,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 2100.0.ms,
            duration: 600.0.ms,
            begin: const Offset(1.0, 1.0),
            end: const Offset(1.7, 1.7),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 2100.0.ms,
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
      'imageOnPageLoadAnimation2': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, -18.0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: const Offset(0.0, 0.0),
            end: const Offset(0.0, 18.0),
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
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: _model.bgColor,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: const AlignmentDirectional(0.0, 0.0),
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  if (_model.firstImg)
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 150.0, 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: SvgPicture.asset(
                          'assets/images/Onboarding_cat.svg',
                          width: 99.0,
                          height: 94.0,
                          fit: BoxFit.cover,
                        ),
                      ).animateOnPageLoad(
                          animationsMap['imageOnPageLoadAnimation1']!),
                    ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 150.0, 0.0),
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
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (_model.firstViewText)
                        Text(
                          'No.1 AI',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: valueOrDefault<Color>(
                                      _model.firstText,
                                      Colors.white,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      if (_model.firstViewText)
                        Text(
                          'Beauty',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: valueOrDefault<Color>(
                                      _model.secondText,
                                      Colors.white,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                        ),
                      if (_model.firstViewText)
                        AnimatedDefaultTextStyle(
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'noto sans',
                                    color: valueOrDefault<Color>(
                                      _model.thirdText,
                                      Colors.white,
                                    ),
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    useGoogleFonts: false,
                                  ),
                          duration: const Duration(milliseconds: 600),
                          curve: Curves.easeIn,
                          child: const Text(
                            'Platform',
                          ),
                        ),
                    ].divide(const SizedBox(width: 15.0)),
                  ),
                  if (!_model.secondViewText)
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
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
                  if (!_model.viewLogo)
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
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
                  if (_model.page2)
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          decoration: const BoxDecoration(
                            color: Color(0x00FFFFFF),
                          ),
                          child: SingleChildScrollView(
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
                                        borderRadius:
                                            BorderRadius.circular(8.0),
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
                                Stack(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Background_character.svg',
                                        width: 196.0,
                                        height: 175.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 50.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/beuply__2.png',
                                          width: 150.0,
                                          height: 189.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'imageOnPageLoadAnimation2']!),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 260.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Ellipse_509.svg',
                                          width: 98.0,
                                          height: 13.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 43.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await actions.kakaoCreate();
                                        },
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          child: SvgPicture.asset(
                                            'assets/images/Property=kakao.svg',
                                            width: 335.0,
                                            height: 48.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            final user = await authManager
                                                .signInWithGoogle(context);
                                            if (user == null) {
                                              return;
                                            }
                                            await UsersTable().insert({
                                              'created_at':
                                                  supaSerialize<DateTime>(
                                                      getCurrentTimestamp),
                                              'updated_at':
                                                  supaSerialize<DateTime>(
                                                      getCurrentTimestamp),
                                              'email': currentUserEmail,
                                              'user_id': currentUserUid,
                                            });

                                            context.pushNamedAuth(
                                              'createAccount1',
                                              context.mounted,
                                              queryParameters: {
                                                'email': serializeParam(
                                                  currentUserEmail,
                                                  ParamType.String,
                                                ),
                                              }.withoutNulls,
                                            );
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(16.0),
                                            child: Image.asset(
                                              'assets/images/Property=Default_stroke.png',
                                              width: 335.0,
                                              height: 48.0,
                                              fit: BoxFit.cover,
                                            ),
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
                                            context.goNamed('email_login');
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
                        ),
                      ],
                    ).animateOnActionTrigger(
                      animationsMap['stackOnActionTriggerAnimation']!,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
