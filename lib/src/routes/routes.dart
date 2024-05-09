import 'package:flutter/material.dart';
import 'package:nicasiabankclone/src/pages/dashboard_page.dart';
import 'package:nicasiabankclone/src/pages/login_page.dart';
import 'package:logger/logger.dart';

final Logger log = Logger();

Map<String, WidgetBuilder> routes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => const SafeArea(
      top: true,
      child: Login(),
    ),
    '/dashboard': (context) => SafeArea(
      top: true,
      child: Dashboard(),
    ),
  };
}

Route<dynamic>? onUnknownRoute(RouteSettings settings) {
  log.d('INSIDE Unknown routes');
  return MaterialPageRoute(
    builder: (BuildContext context) => const Login(),
  );
}