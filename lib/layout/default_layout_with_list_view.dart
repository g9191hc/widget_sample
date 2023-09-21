import 'package:flutter/material.dart';

class DefaultLayoutWithListView extends StatelessWidget {
  final String title;
  final List<Widget> children;
  Widget? floatingActionButton;
  FloatingActionButtonLocation? floatingActionButtonLocation;
  Widget? bottomNavigationBar;
  Widget? drawer;
  Widget? endDrawer;

  DefaultLayoutWithListView({
    super.key,
    required this.title,
    required this.children,
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
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
      endDrawer: endDrawer,
      body: _Body(children: children),
    );
  }
}

class _Body extends StatelessWidget {
  final List<Widget> children;

  const _Body({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
        child: Scrollbar(
          child: ListView(
            children: children,
          ),
        ));
  }
}
