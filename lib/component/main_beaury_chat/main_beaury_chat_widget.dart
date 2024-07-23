import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main_beaury_chat_model.dart';
export 'main_beaury_chat_model.dart';

class MainBeauryChatWidget extends StatefulWidget {
  const MainBeauryChatWidget({super.key});

  @override
  State<MainBeauryChatWidget> createState() => _MainBeauryChatWidgetState();
}

class _MainBeauryChatWidgetState extends State<MainBeauryChatWidget> {
  late MainBeauryChatModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainBeauryChatModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: SvgPicture.asset(
        'assets/images/AI_Tooltip.svg',
        width: 158.0,
        height: 35.0,
        fit: BoxFit.contain,
      ),
    );
  }
}
