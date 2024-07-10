import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'product_list_choice_chips_model.dart';
export 'product_list_choice_chips_model.dart';

class ProductListChoiceChipsWidget extends StatefulWidget {
  const ProductListChoiceChipsWidget({
    super.key,
    this.selected,
    String? title,
  }) : title = title ?? '맞춤추천';

  final bool? selected;
  final String title;

  @override
  State<ProductListChoiceChipsWidget> createState() =>
      _ProductListChoiceChipsWidgetState();
}

class _ProductListChoiceChipsWidgetState
    extends State<ProductListChoiceChipsWidget> {
  late ProductListChoiceChipsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductListChoiceChipsModel());

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
      width: 70.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 11.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.title,
                    '1',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'noto sans',
                        color: widget.selected!
                            ? FlutterFlowTheme.of(context).electricBlue2
                            : Colors.black,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        useGoogleFonts: false,
                      ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (widget.selected! ? true : false)
                Container(
                  width: 60.0,
                  height: 2.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).electricBlue2,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
