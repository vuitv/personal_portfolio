import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:url_strategy/url_strategy.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  setPathUrlStrategy();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
