import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/services/weatherserviceprovider.dart';
import 'package:weatherapp/utils/apptext.dart';
import 'package:weatherapp/utils/colors.dart';

class HomeBodypart extends StatelessWidget {
  const HomeBodypart({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherServiceProvider>(context);
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        // width: MediaQuery.of(context).size.width * 0.3,
        width: double.infinity,
        color: transparent,
        child: Column(
          children: [
            AppText(
              data: weatherProvider.weather!.main!.temp.toString(),
              color: Colors.white,
              fw: FontWeight.bold,
              size: 35,
            ),
            AppText(
              data: 'Thunder',
              color: Colors.white38,
              fw: FontWeight.normal,
              size: 25,
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
