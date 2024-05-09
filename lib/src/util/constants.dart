import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFD20910);
const Color primaryColorLight = Color(0xFFED1B2E);
const Color drawerColoPrimary = Color(0xFF88070B);
const Color drawerColoSecondary = Color(0xFFCF0A11);

const String path = 'assets/images/';

final List<Draw> drawerItems = [
  Draw(title: 'Quick Payment', icon: Icons.photo_camera),
  Draw(title: 'Favorite Account', icon: Icons.supervised_user_circle),
  Draw(title: 'Invoice History', icon: Icons.receipt),
  Draw(title: 'Complain', icon: Icons.speaker_notes),
  Draw(title: 'Activity Log', icon: Icons.assessment),
  Draw(title: 'Settings', icon: Icons.settings),
];
final List imageList = [
  {'name': 'el', 'title': 'Electricity'},
  {'name': 'air', 'title': 'Airlines'},
  {'name': 'router', 'title': 'Internet'},
  {'name': 'tv', 'title': 'TV'},
  {'name': 'umb', 'title': 'Insurance'},
  {'name': 'sas', 'title': 'Sasto Tickets'},
  {'name': 'icon_more', 'title': 'Load More'},
];

final List categories = [
  {'image': '${path}ic_username.png', 'title': 'My Account'},
  {'image': '${path}esewa.jpg', 'title': 'Load eSewa'},
  {'image': '${path}ic_payments_64_4.png', 'title': 'Payment'},
  {'image': '${path}ic_transfer_32_4.png', 'title': 'Fund Transfer'},
  {'image': '${path}ic_sch_payment_64_4.png', 'title': 'Schedule Payment'},
  {'image': '${path}ic_scan2pay_64_4.png', 'title': 'Scan To Pay'},
];

final List transactions = [
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '120,573.00',
    date: '19-02-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '40,900.00',
    date: '19-02-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '2,000.00',
    date: '07-06-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '53,000.00',
    date: '23-07-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '140,000.00',
    date: '19-09-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '21,560.00',
    date: '11-10-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '36,000.00',
    date: '12-10-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '95,965.00',
    date: '15-11-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '135,000.00',
    date: '15-11-2023',
  ),
  Trx(
    type: 'cwdr/',
    number: '983467/9856324673247093',
    amount: '75,050.00',
    date: '19-12-2023',
  ),
];

class Trx {
  final String type, number, amount, date;
  Trx(
      {required this.type,
      required this.amount,
      required this.date,
      required this.number});
}

class Draw {
  final String title;
  final IconData icon;
  Draw({required this.title, required this.icon});
}
