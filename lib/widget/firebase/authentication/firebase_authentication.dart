import 'package:flutter/material.dart';

import '../../../layout/default_layout_with_list_view.dart';

class FirebaseAuthenticationSample extends StatelessWidget {
  const FirebaseAuthenticationSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(
      title: 'FirebaseAuthentication',
      children: [
        ElevatedButton(
            onPressed: () {},
            child: Text('Firebase Authentication',
                style: TextStyle(fontSize: 24.0))),
      ],
    );
  }
}