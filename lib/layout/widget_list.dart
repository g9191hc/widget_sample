import 'package:flutter/material.dart';
import 'package:widget_sample/layout/default_layout.dart';
import 'package:widget_sample/widget/animation/animation.dart';
import 'package:widget_sample/widget/snack_bar.dart';

import '../component/push_button.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'WidgetList',
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            PushButton(
              name: 'SnackBar',
              push: SnackBarSample(),
            ),
            PushButton(
              name: 'Animation/',
              push: AnimationSample(),
            ),
          ],
        ),
      ),
    );
  }
}
