import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/services/weatherserviceprovider.dart';
import 'package:weatherapp/utils/apptext.dart';
import 'package:weatherapp/utils/colors.dart';

class HomeBodypart extends StatelessWidget {
  const HomeBodypart({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<WeatherServiceProvider>(
      builder: (context, weatherServiceProvider, child) {
        final weatherData = weatherServiceProvider.weather;
        if (weatherData == null) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blueAccent,
            ),
          );
        }
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
                  data: weatherData.main!.temp.toString(),
                  color: Colors.white,
                  fw: FontWeight.bold,
                  size: 35,
                ),
                AppText(
                  data: weatherData.weather![0].main,
                  color: Colors.white38,
                  fw: FontWeight.normal,
                  size: 25,
                ),
                AppText(
                  data: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  color: accents,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
