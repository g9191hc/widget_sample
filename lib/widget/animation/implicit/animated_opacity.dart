import 'package:flutter/material.dart';
import 'package:widget_sample/layout/default_layout.dart';

class AnimatedOpacitySample extends StatefulWidget {
  const AnimatedOpacitySample({super.key});

  @override
  State<AnimatedOpacitySample> createState() => _AnimatedOpacitySampleState();
}

class _AnimatedOpacitySampleState extends State<AnimatedOpacitySample> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'AnimatedOpacity',
      child: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  opacity: opacity,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastEaseInToSlowEaseOut,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.blue,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(
                      () {
                        opacity = opacity == 1 ? 0 : 1;
                      },
                    );
                  },
                  child: const Text('animate'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
