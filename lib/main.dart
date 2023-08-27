import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:widget_sample/layout/default_layout.dart';
import 'package:widget_sample/widget/widget_list.dart';
import 'package:widget_sample/widget/snack_bar.dart';
import 'package:dcdg/dcdg.dart';

Future<void> main() async {
    await SentryFlutter.init(
          (options) {
        options.dsn = 'https://3bb8ee0d705b0b9c7b9df3939060eaaa@o4505777137319936.ingest.sentry.io/4505777196171264';
        // Set tracesSampleRate to 1.0 to capture 100% of transactions for performance monitoring.
        // We recommend adjusting this value in production.
        options.tracesSampleRate = 1.0;
      },
      appRunner: () => runApp(const _App()),
    );
    // or define SENTRY_DSN via Dart environment variable (--dart-define)
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