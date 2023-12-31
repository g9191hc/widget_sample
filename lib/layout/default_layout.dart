import 'package:flutter/material.dart';

class DefaultLayout extends StatelessWidget {
  final String title;
  final Widget child;

  Widget? floatingActionButton;
  FloatingActionButtonLocation? floatingActionButtonLocation;
  Widget? bottomNavigationBar;
  Widget? drawer;
  Widget? endDrawer;


  DefaultLayout({
    super.key,
    required this.title,
    required this.child,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.bottomNavigationBar,
    this.drawer,
    this.endDrawer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      drawer: drawer,
      endDrawer: endDrawer,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      body: child,
    );
  }
}