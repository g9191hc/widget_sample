import 'package:flutter/material.dart';
import 'package:widget_sample/layout/default_layout_with_list_view.dart';
import 'package:widget_sample/widget/animation/animations.dart';
import 'package:widget_sample/widget/buttons.dart';
import 'package:widget_sample/widget/external/external_library.dart';
import 'package:widget_sample/widget/firebase/firebase.dart';
import 'package:widget_sample/widget/snack_bar.dart';

import '../component/push_button.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(
      title: 'WidgetList',
      children: [
        PushButton(name: 'Animation/', push: AnimationSample()),
        PushButton(name: 'ExternalLibrary/', push: ExternalLibrarySample()),
        PushButton(name: 'FireBase/', push: FireBaseSample()),
        PushButton(name: 'SnackBar', push: SnackBarSample()),
        PushButton(name: 'Buttons', push: ButtonsSample()),
      ],
    );
  }
}
