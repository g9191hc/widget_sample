import 'package:flutter/material.dart';

import '../../../layout/default_layout.dart';

class AnimatedPaddingSample extends StatefulWidget {
  const AnimatedPaddingSample({super.key});

  @override
  State<AnimatedPaddingSample> createState() => _AnimatedPaddingSampleState();
}

class _AnimatedPaddingSampleState extends State<AnimatedPaddingSample> {
  double padding = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'AnimatedPadding',
      child: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      padding = padding == 0 ? 20 : 0;
                    });
                  },
                  child: const Text('animate'),
                ),
                AnimatedPaddingBoxRow(count: 2, padding: padding),
                AnimatedPaddingBoxRow(count: 3, padding: padding),
                AnimatedPaddingBoxRow(count: 4, padding: padding),
                AnimatedPaddingBoxRow(count: 5, padding: padding),
                AnimatedPaddingBoxRow(count: 4, padding: padding),
                AnimatedPaddingBoxRow(count: 3, padding: padding),
                AnimatedPaddingBoxRow(count: 2, padding: padding),
              ],
            ),
          ],
        ),
      ),
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
          curve: Curves.fastOutSlowIn,
          child: Container(
            height: constraints.maxWidth,
            color: Colors.blue,
          ),
        );
      }),
    );
  }
}
