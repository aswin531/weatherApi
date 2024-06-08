import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/providers/weatherserviceprovider.dart';
import 'package:weatherapp/utils/apptext.dart';
import 'package:weatherapp/utils/colors.dart';

class HomeBodypart extends StatelessWidget {
  const HomeBodypart({super.key});

  @override
  Widget build(BuildContext context) {
    // final String celcius = String.fromCharCode(0x2103);
    const String celcius = "°C";
    return Consumer<WeatherServiceProvider>(
      builder: (context, weatherServiceProvider, child) {
        final weatherData = weatherServiceProvider.weather;
        if (weatherData == null) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.black,
            ),
          );
        }
        return Align(
          alignment: Alignment.topCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.3,
            // width: MediaQuery.of(context).size.width * 0.3,
            width: double.infinity,
            color: transparent,
            child: Column(
              children: [
                AppText(
                  data: weatherData.main!.temp.toString() + celcius,
                  color: Colors.white,
                  fw: FontWeight.bold,
                  size: 60,
                ),
                AppText(
                  data: weatherData.weather![0].main,
                  color: Colors.white,
                  fw: FontWeight.normal,
                  size: 30,
                ),
                AppText(
                  data: DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  color: Colors.black,
                  size: 35,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
