import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'button335x56_model.dart';
export 'button335x56_model.dart';

class Button335x56Widget extends StatefulWidget {
  const Button335x56Widget({
    super.key,
    required this.text,
    this.fillColor,
    this.borderColor,
    this.textColor,
  });

  final String? text;
  final Color? fillColor;
  final Color? borderColor;
  final Color? textColor;

  @override
  State<Button335x56Widget> createState() => _Button335x56WidgetState();
}

class _Button335x56WidgetState extends State<Button335x56Widget> {
  late Button335x56Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Button335x56Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () {
        print('Button pressed ...');
      },
      text: widget.text!,
      options: FFButtonOptions(
        width: 335.0,
        height: 56.0,
        padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
        iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
        color: widget.fillColor,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'noto sans',
              color: widget.textColor,
              fontSize: 16.0,
              letterSpacing: 0.0,
              useGoogleFonts: false,
            ),
        elevation: 0.0,
        borderSide: BorderSide(
          color: valueOrDefault<Color>(
            widget.borderColor,
            FlutterFlowTheme.of(context).electricBlue2,
          ),
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(16.0),
      ),
    );
  }
}
