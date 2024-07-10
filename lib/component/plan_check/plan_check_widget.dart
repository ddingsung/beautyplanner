import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'plan_check_model.dart';
export 'plan_check_model.dart';

class PlanCheckWidget extends StatefulWidget {
  const PlanCheckWidget({
    super.key,
    this.parameter1,
    this.text,
    this.img,
    String? fillColor,
  }) : fillColor = fillColor ?? '#E2E3E6';

  final bool? parameter1;
  final String? text;
  final String? img;
  final String fillColor;

  @override
  State<PlanCheckWidget> createState() => _PlanCheckWidgetState();
}

class _PlanCheckWidgetState extends State<PlanCheckWidget> {
  late PlanCheckModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlanCheckModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 141.0,
          height: 119.0,
          decoration: BoxDecoration(
            color: colorFromCssString(
              widget.fillColor,
              defaultColor: const Color(0xFFE2E3E6),
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
            child: Container(
              width: 133.0,
              height: 111.0,
              decoration: BoxDecoration(
                color: const Color(0x00FFFFFF),
                borderRadius: BorderRadius.circular(16.0),
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(45.0, 21.0, 48.0, 50.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image.network(
              'https://picsum.photos/seed/298/600',
              width: 48.0,
              height: 48.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(40.0, 81.0, 0.0, 19.0),
          child: Text(
            valueOrDefault<String>(
              widget.text,
              '다이어트',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'noto sans',
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
        ),
      ],
    );
  }
}
