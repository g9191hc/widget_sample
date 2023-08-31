import 'package:flutter/material.dart';
import 'package:widget_sample/layout/default_layout_with_list_view.dart';

class ButtonsSample extends StatelessWidget {
  const ButtonsSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(
      title: 'Buttons',
      children: const [
        _TextButton(),
        _OutlinedButton(),
        _ElevatedButton(),
        _IconButton(),
        _ToggleButtons(),
      ],
    );
  }
}

class _TextButton extends StatelessWidget {
  const _TextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text('TextButton'),
      style: TextButton.styleFrom(textStyle: TextStyle(fontSize: 30.0)),
    );
  }
}

class _OutlinedButton extends StatelessWidget {
  const _OutlinedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(textStyle: const TextStyle(fontSize: 30.0)),
      child: const Text('OutlinedButton'),
    );
  }
}

class _ElevatedButton extends StatelessWidget {
  const _ElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 30.0)),
      child: const Text('ElevatedButton'),
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'IconButton',
          style: TextStyle(fontSize: 20.0),
        ),
        SizedBox(width: 8.0),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.icecream, size: 40.0),
        ),
      ],
    );
  }
}

class _ToggleButtons extends StatefulWidget {
  const _ToggleButtons({super.key});

  @override
  State<_ToggleButtons> createState() => _ToggleButtonsState();
}

class _ToggleButtonsState extends State<_ToggleButtons> {
  List<bool>? selectionStates;

  final children = <Icon>[
    const Icon(Icons.shop),
    const Icon(Icons.shopping_bag),
    const Icon(Icons.access_alarm),
  ];

  @override
  void initState() {
    super.initState();
    selectionStates = List.generate(children.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'ToggleButtons',
          style: TextStyle(fontSize: 20.0),
        ),
        const SizedBox(width: 8.0),
        ToggleButtons(
          isSelected: selectionStates!,
          onPressed: (index) {
            setState(() {
              selectionStates![index] = !selectionStates![index];
            });
          },
          children: children,
        ),
      ],
    );
  }
}