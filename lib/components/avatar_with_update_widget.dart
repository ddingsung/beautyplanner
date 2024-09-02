import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'avatar_with_update_model.dart';
export 'avatar_with_update_model.dart';

class AvatarWithUpdateWidget extends StatefulWidget {
  const AvatarWithUpdateWidget({super.key});

  @override
  State<AvatarWithUpdateWidget> createState() => _AvatarWithUpdateWidgetState();
}

class _AvatarWithUpdateWidgetState extends State<AvatarWithUpdateWidget> {
  late AvatarWithUpdateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AvatarWithUpdateModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(0.0),
        child: SvgPicture.asset(
          'assets/images/Group_6984.svg',
          width: 91.0,
          height: 91.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
