import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_counting_box_model.dart';
export 'custom_counting_box_model.dart';

class CustomCountingBoxWidget extends StatefulWidget {
  const CustomCountingBoxWidget({super.key});

  @override
  State<CustomCountingBoxWidget> createState() =>
      _CustomCountingBoxWidgetState();
}

class _CustomCountingBoxWidgetState extends State<CustomCountingBoxWidget> {
  late CustomCountingBoxModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomCountingBoxModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68.0,
      height: 27.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(2.0),
        border: Border.all(
          color: const Color(0xFF90929D),
          width: 1.0,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlutterFlowIconButton(
            borderColor: const Color(0x00FFFFFF),
            borderWidth: 1.0,
            buttonSize: 24.0,
            fillColor: const Color(0x00FFFFFF),
            icon: const FaIcon(
              FontAwesomeIcons.minus,
              color: Color(0xFFC6C7CD),
              size: 10.0,
            ),
            onPressed: () async {
              _model.count = _model.count + -1;
              setState(() {});
            },
          ),
          Text(
            '0',
            maxLines: 1,
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'noto sans',
                  color: Colors.black,
                  fontSize: functions.setFontSize(14.0),
                  letterSpacing: 0.0,
                  useGoogleFonts: false,
                ),
          ),
          FlutterFlowIconButton(
            borderColor: const Color(0x00FFFFFF),
            borderWidth: 0.0,
            buttonSize: 24.0,
            fillColor: const Color(0x00FFFFFF),
            icon: FaIcon(
              FontAwesomeIcons.plus,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 10.0,
            ),
            onPressed: () async {
              _model.count = _model.count + 1;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
