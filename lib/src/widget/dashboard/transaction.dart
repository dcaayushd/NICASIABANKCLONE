import 'package:flutter/material.dart';
import 'package:nicasiabankclone/src/util/constants.dart';
import 'package:logger/logger.dart';

class Transaction extends StatelessWidget {
  final Trx transaction;
  final Logger log = Logger();
  Transaction({super.key, required this.transaction});

  @override
  Widget build(BuildContext context) {
    log.d(transaction.amount);
    Size deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Material(
        color: primaryColorLight,
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
        elevation: 3.0,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          child: Container(
            height: deviceSize.height * 0.10,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: const BoxDecoration(
              border: Border(
                left: BorderSide(
                  width: 10.0,
                  color: primaryColor,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  transaction.type.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      transaction.number.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      'NPR. ${transaction.amount.toUpperCase()}',
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  transaction.date.toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
