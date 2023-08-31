import 'package:flutter/material.dart';
import 'package:widget_sample/component/push_button.dart';
import 'package:widget_sample/layout/default_layout_with_list_view.dart';
import 'package:widget_sample/widget/firebase/authentication/firebase_authentication.dart';

class FireBaseSample extends StatelessWidget {
  const FireBaseSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayoutWithListView(title: 'firebase/', children: [
      PushButton(
          name: 'FirebaseAuthentication', push: FirebaseAuthenticationSample()),
    ]);
  }
}
