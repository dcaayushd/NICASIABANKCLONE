import 'package:flutter/material.dart';
import 'package:nicasiabankclone/src/util/constants.dart';
import 'package:nicasiabankclone/src/widget/profile_image.dart';

class TopAccountInfo extends StatelessWidget {
  TopAccountInfo({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.symmetric(
        //horizontal: deviceSize.width * 0.03,
        vertical: deviceSize.height * 0.02,
      ),
      child: Container(
        alignment: Alignment.center,
        height: deviceSize.height * 0.2,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ProfileImage(),
                buildAccountDetail,
              ],
            ),
            Container(
              height: 8.0,
              width: 8.0,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  final buildAccountDetail = Container(
    padding: const EdgeInsets.only(
      left: 15.0,
    ),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Sarbashrestha Khata'.toUpperCase(),
          style: const TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text(
              'NPR.',
              style: TextStyle(
                fontSize: 17.0,
                color: primaryColorLight,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              width: 3.0,
            ),
            const Text(
              '36,487.75',
              style: TextStyle(
                fontSize: 20.0,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Icon(
              Icons.remove_red_eye,
              color: Colors.teal.shade200,
              size: 20.0,
            )
          ],
        ),
        const Text(
          '014634298571485904',
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
