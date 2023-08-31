import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:widget_sample/view/widget_list.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      name: 'test',
      options: DefaultFirebaseOptions.currentPlatform,
    );


  await SentryFlutter.init(
    (options) {
      options.dsn =
          'https://3bb8ee0d705b0b9c7b9df3939060eaaa@o4505777137319936.ingest.sentry.io/4505777196171264';
      options.tracesSampleRate = 0.01;
    },
    appRunner: () => runApp(const _App()),
  );
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
