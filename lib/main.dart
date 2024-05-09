import 'package:flutter/material.dart';
import 'package:nicasiabankclone/src/pages/dashboard_page.dart';
import 'package:nicasiabankclone/src/pages/login_page.dart';
import 'package:nicasiabankclone/src/util/constants.dart';
import 'package:logger/logger.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Logger log = Logger();
MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIC ASIA',
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: primaryColorLight),
        // accentColor: primaryColorLight,
      ),
      // home: SafeArea(
      //   top: true,
      //   child: App(),
      // ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => const SafeArea(
              top: true,
              child: Login(),
            ),
        '/dashboard': (context) => SafeArea(
              top: true,
              child: Dashboard(),
            ),
      },
      onUnknownRoute: (RouteSettings settings) {
        log.d('INSIDE Unknown routes');
        return MaterialPageRoute(
          builder: (BuildContext context) => const Login(),
        );
      },
    );
  }
}
