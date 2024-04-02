import 'package:flutter/material.dart';
import 'package:weatherapp/utils/apptext.dart';
import 'package:weatherapp/utils/colors.dart';

class HomeBodypart extends StatelessWidget {
  const HomeBodypart({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        // width: MediaQuery.of(context).size.width * 0.3,
        width: double.infinity,
        color: transparent,
        child: Column(
          children: [
            AppText(
              data: "36 C",
              color: Colors.white,
              fw: FontWeight.bold,
              size: 30,
            ),
            AppText(
              data: 'Thunder',
              color: Colors.white38,
              fw: FontWeight.normal,
              size: 20,
            ),
            AppText(
              data: DateTime.now().toString(),
              color: accents,
            ),
          ],
        ),
      ),
    );
  }
}
