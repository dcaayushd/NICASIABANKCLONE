import 'package:flutter/material.dart';
import 'package:nicasiabankclone/src/util/constants.dart';

class LoginTopSection extends StatelessWidget {
  const LoginTopSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      height: deviceSize.height * 0.27,
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          width: 2.0,
          color: Colors.white,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const SizedBox(
            height: 10.0,
          ),
          Image.asset('assets/images/brand_alternate.png'),
          const SizedBox(
            height: 15.0,
          ),
          SizedBox(
            height: deviceSize.height < 700
                ? deviceSize.height * 0.19
                : deviceSize.height * 0.18,
            child: GridView.count(
              crossAxisCount: 3,
              children: imageList
                  .map((item) => Column(
                        children: <Widget>[
                          Image.asset(
                            '$path${item['name']}.png',
                            height: 50.0,
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            item['title'],
                            style: const TextStyle(color: Colors.white),
                          ),
                        ],
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
