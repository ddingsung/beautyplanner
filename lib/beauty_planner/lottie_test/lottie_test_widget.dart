import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'lottie_test_model.dart';
export 'lottie_test_model.dart';

class LottieTestWidget extends StatefulWidget {
  const LottieTestWidget({super.key});

  @override
  State<LottieTestWidget> createState() => _LottieTestWidgetState();
}

class _LottieTestWidgetState extends State<LottieTestWidget> {
  late LottieTestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LottieTestModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Lottie.asset(
                'assets/lottie_animations/_.json',
                width: 360.0,
                height: 800.0,
                fit: BoxFit.cover,
                animate: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
