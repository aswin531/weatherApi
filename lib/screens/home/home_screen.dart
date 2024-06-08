import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screens/home/widgets/headparthome.dart';
import 'package:weatherapp/providers/imagehelperservice.dart';
import 'package:weatherapp/providers/weatherserviceprovider.dart';
import 'package:weatherapp/screens/home/widgets/bodyparthome.dart';
import 'package:weatherapp/screens/home/widgets/tempcard.dart';
import 'package:weatherapp/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: transparent,
      // extendBodyBehindAppBar: true,
      body: SafeArea(
        child: Consumer<WeatherServiceProvider>(
          builder: (context, weatherServiceProvider, child) {
            final weatherCondition =
                weatherServiceProvider.weather?.weather?.first.main ??
                    'unknown';
            //print('Weather Condition: $weatherCondition');
            final bgImage = ImageHelper.getBgImage(weatherCondition.toString());
            final bgColor = ColorSelector.getColor(weatherCondition.toString());
            //print('Background Image: $bgColor');

            return Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  color: bgColor,
                  image: DecorationImage(
                      image: AssetImage(bgImage), fit: BoxFit.cover)),
              child: const Column(
                children: [
                  HeadPartHome(),
                  SizedBox(
                    height: 10,
                  ),
                  HomeBodypart(),
                  SizedBox(
                    height: 10,
                  ),
                  TemperatureCard(),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
