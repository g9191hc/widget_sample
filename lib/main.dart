import 'package:flutter/material.dart';
import 'package:widget_sample/layout/default_layout.dart';
import 'package:widget_sample/widget/widget_list.dart';
import 'package:widget_sample/widget/snack_bar.dart';

void main() {
  runApp(const _App());
}

class _App extends StatelessWidget {
  const _App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetList(),
    );
  }
}
