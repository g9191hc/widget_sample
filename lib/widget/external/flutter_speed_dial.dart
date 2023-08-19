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
    return DefaultLayout(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'),
        ],
      ),
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
              onTap: () {
                Fluttertoast.showToast(msg: 'copied');
              },
              backgroundColor: Colors.green),
          SpeedDialChild(
            child: Icon(Icons.paste_outlined),
            label: 'paste',
            labelStyle: TextStyle(
              fontSize: 20.0,
            ),
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
