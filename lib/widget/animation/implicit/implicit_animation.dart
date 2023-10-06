import 'package:flutter/material.dart';
import 'package:widget_sample/component/push_button.dart';
import 'package:widget_sample/layout/default_layout_with_list_view.dart';
import 'package:widget_sample/widget/animation/implicit/animated_container.dart';

import 'animated_opacity.dart';
import 'animated_padding.dart';

class ImplicitAnimation extends StatelessWidget {
  const ImplicitAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(
      title: 'ImplicitAnimation/',
      children: [
        PushButton(name: 'AnimatedOpacity', push: AnimatedOpacitySample()),
        PushButton(name: 'AnimatedPadding', push: AnimatedPaddingSample()),
        PushButton(name: 'AnimatedContainer', push: AnimatedContainerSample()),
      ],
    );
  }
}
