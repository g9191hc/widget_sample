import 'package:flutter/material.dart';


class PushButton extends StatelessWidget {
  final String name;
  final Widget push;

  const PushButton({
    super.key,
    required this.name,
    required this.push,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => push,
          ),
        );
      },
      child: Text(name),
    );
  }
}
