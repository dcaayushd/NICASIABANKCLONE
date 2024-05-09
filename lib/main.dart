import 'package:flutter/material.dart';
import 'package:nicasiabankclone/src/util/constants.dart';
import 'package:nicasiabankclone/src/routes/routes.dart'; // Import the routes.dart file

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NIC ASIA BANK',
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: primaryColorLight),
      ),
      initialRoute: '/',
      routes: routes(), // Use the routes() function from routes.dart
      onUnknownRoute: onUnknownRoute, // Use the onUnknownRoute function from routes.dart
    );
  }
}