import 'package:flutter/material.dart';

import '../../../layout/default_layout_with_list_view.dart';

class AnimatedPaddingSample extends StatefulWidget {
  const AnimatedPaddingSample({super.key});

  @override
  State<AnimatedPaddingSample> createState() => _AnimatedPaddingSampleState();
}

class _AnimatedPaddingSampleState extends State<AnimatedPaddingSample> {
  bool isPaddingAdded = false;
  double padding = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(
      floatingActionButton: _floatingActionButton(),
      title: 'AnimatedPadding',
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AnimatedPaddingBoxRow(count: 5, padding: padding),
            AnimatedPaddingBoxRow(count: 4, padding: padding),
            AnimatedPaddingBoxRow(count: 3, padding: padding),
            AnimatedPaddingBoxRow(count: 2, padding: padding),
            AnimatedPaddingBoxRow(count: 3, padding: padding),
            AnimatedPaddingBoxRow(count: 4, padding: padding),
            AnimatedPaddingBoxRow(count: 5, padding: padding),
          ],
        ),
      ],
    );
  }

  FloatingActionButton _floatingActionButton() {
    return FloatingActionButton.extended(
      onPressed: () {
        setState(() {
          padding = isPaddingAdded ? 0 : 8;
          isPaddingAdded = !isPaddingAdded;
        });
      },
      label: Text(
        isPaddingAdded ? "Remove Padding" : "Add Padding",
      ),
      backgroundColor: Colors.blue[900],
    );
  }
}

class AnimatedPaddingBoxRow extends StatelessWidget {
  final double padding;
  final int count;

  const AnimatedPaddingBoxRow({
    super.key,
    required this.count,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            count, (index) => AnimatedPaddingBox(padding: padding)));
  }
}

class AnimatedPaddingBox extends StatelessWidget {
  final double padding;

  const AnimatedPaddingBox({super.key, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(builder: (context, constraints) {
        return AnimatedPadding(
          padding: EdgeInsets.all(padding),
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastEaseInToSlowEaseOut,
          child: Container(
            height: constraints.maxWidth,
            color: Colors.blue,
          ),
        );
      }),
    );
  }
}
