import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_carousel_model.dart';
export 'custom_carousel_model.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({
    super.key,
    int? imgIndex,
  }) : imgIndex = imgIndex ?? 1;

  final int imgIndex;

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  late CustomCarouselModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomCarouselModel());

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
          width: 360.0,
          height: 284.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1447933601403-0c6688de566e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxjb2ZmZWV8ZW58MHx8fHwxNzIwMTI3MzIwfDA&ixlib=rb-4.0.3&q=80&w=1080',
                  width: 360.0,
                  height: 284.0,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(164.0, 264.0, 164.0, 0.0),
          child: Container(
            width: 32.0,
            height: 16.0,
            decoration: BoxDecoration(
              color: const Color(0xFF90929D),
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1/1',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'noto sans',
                        fontSize: 10.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(8.0, 130.0, 0.0, 0.0),
          child: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFFFCFCFD),
            size: 24.0,
          ),
        ),
        const Padding(
          padding: EdgeInsetsDirectional.fromSTEB(328.0, 130.0, 0.0, 0.0),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFFFCFCFD),
            size: 24.0,
          ),
        ),
      ],
    );
  }
}
