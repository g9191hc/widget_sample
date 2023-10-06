import 'package:flutter/material.dart';
import 'package:widget_sample/layout/default_layout_with_list_view.dart';

class AnimatedContainerSample extends StatefulWidget {
  const AnimatedContainerSample({super.key});

  @override
  State<AnimatedContainerSample> createState() =>
      _AnimatedContainerSampleState();
}

class _AnimatedContainerSampleState extends State<AnimatedContainerSample> {
  bool pressed = false;

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(
      title: 'AnimatedContainer',
      children: [
        Center(
          child: AnimatedContainer(
            width: pressed ? 100 : 200,
            height: pressed ? 200 : 100,
            decoration: BoxDecoration(
              color: pressed ? Colors.red[500] : Colors.blue[500],
            ),
            duration: Duration(seconds: 1),
            curve: Curves.fastOutSlowIn,
            child: Text("Animation"),
          ),
        ),
        ElevatedButton(
            onPressed: () {
              setState(
                () {pressed = !pressed;},
              );
            },
            child: Text("Animate!"))
      ],
    );
  }
}
