import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:widget_sample/layout/default_layout.dart';

class FlutterSpeedDialSample extends StatelessWidget {
  const FlutterSpeedDialSample({super.key});

  @override
  Widget build(BuildContext context) {
    final labelStyle =  TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    );

    return DefaultLayout(
      title: 'Flutter Speed Dial',
      child: Center(child: Text('Flutter Speed Dial')),
      floatingActionButton: SpeedDial(
        spacing: 30.0,
        spaceBetweenChildren: 10.0,
        animatedIcon: AnimatedIcons.menu_close,
        activeLabel: Text('닫기'),
        label: Text('열기'),
        children: [
          SpeedDialChild(
              child: Icon(Icons.copy),
              label: 'copy',
              labelStyle: labelStyle,
              onTap: () {
                Fluttertoast.showToast(msg: 'copied');
              },
              backgroundColor: Colors.green),
          SpeedDialChild(
            child: Icon(Icons.paste_outlined),
            label: 'paste',
            labelStyle: labelStyle,
            onTap: () {
              Fluttertoast.showToast(msg: 'pasted');
            },
            backgroundColor: Colors.red,
          ),
        ].reversed.toList(),
      ),
    );
  }
}
