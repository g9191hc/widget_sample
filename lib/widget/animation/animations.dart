import 'package:flutter/material.dart';
import 'package:widget_sample/component/push_button.dart';
import 'package:widget_sample/layout/default_layout_with_list_view.dart';
import 'package:widget_sample/widget/animation/implicit/animated_opacity.dart';
import 'package:widget_sample/widget/animation/implicit/animated_padding.dart';

class AnimationSample extends StatelessWidget {
  const AnimationSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(
      title: 'Animations/',
      children: [
        PushButton(name: 'AnimatedOpacity', push: AnimatedOpacitySample()),
        PushButton(name: 'AnimatedPadding', push: AnimatedPaddingSample()),
      ],
    );
  }
}
