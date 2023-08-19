import 'package:flutter/material.dart';
import 'package:widget_sample/component/push_button.dart';
import 'package:widget_sample/layout/default_layout.dart';
import 'package:widget_sample/widget/animation/implicit/animated_opacity.dart';
import 'package:widget_sample/widget/animation/implicit/animated_padding.dart';

class AnimationSample extends StatelessWidget {
  const AnimationSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'Animations/',
      child: ListView(
        children: const [
          PushButton(name: 'AnimatedOpacity', push: AnimatedOpacitySample()),
          PushButton(name: 'AnimatedPadding', push: AnimatedPaddingSample()),
        ],
      ),
    );
  }
}
