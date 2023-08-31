import 'package:flutter/cupertino.dart';

import '../../component/push_button.dart';
import '../../layout/default_layout_with_list_view.dart';
import '../animation/implicit/animated_opacity.dart';
import 'flutter_speed_dial.dart';

class ExternalLibrarySample extends StatelessWidget {
  const ExternalLibrarySample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(
      title: 'Animations/',
      children: [
        PushButton(name: 'FlutterSpeedDial', push: FlutterSpeedDialSample()),
      ],
    );
  }
}
