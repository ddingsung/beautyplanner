import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'custom_counting_box_in_cart_model.dart';
export 'custom_counting_box_in_cart_model.dart';

class CustomCountingBoxInCartWidget extends StatefulWidget {
  const CustomCountingBoxInCartWidget({
    super.key,
    int? count,
  }) : count = count ?? 0;

  final int count;

  @override
  State<CustomCountingBoxInCartWidget> createState() =>
      _CustomCountingBoxInCartWidgetState();
}

class _CustomCountingBoxInCartWidgetState
    extends State<CustomCountingBoxInCartWidget> {
  late CustomCountingBoxInCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomCountingBoxInCartModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.localCount = widget.count;
      setState(() {});
    });

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
              if (_model.localCount >= 0) {
                _model.localCount = _model.localCount + -1;
                _model.updatePage(() {});
              }
            },
          ),
          Text(
            valueOrDefault<String>(
              _model.localCount.toString(),
              '0',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'noto sans',
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
              if (_model.localCount <= 99) {
                _model.localCount = _model.localCount + 1;
                _model.updatePage(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
