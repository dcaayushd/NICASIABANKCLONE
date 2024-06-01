import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nicasiabankclone/src/util/constants.dart';
import 'package:nicasiabankclone/src/widget/dashboard/transaction.dart';
import 'package:nicasiabankclone/src/widget/heading.dart';

class LastTransactions extends StatelessWidget {
  const LastTransactions({super.key});

  @override
  Widget build(BuildContext context) {

    Size deviceSize = MediaQuery.of(context).size;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 10.0,
        ),
        const Heading(
          title: 'Last transactions',
        ),
        const SizedBox(
          height: 25.0,
        ),
        Flexible(
          child: SizedBox(
            height: deviceSize.height * 0.3,
            child: ListView.builder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount: transactions.length,
              itemBuilder: (context, int index) => Transaction(
                transaction: transactions[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
