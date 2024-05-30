import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screens/home/widgets/headparthome.dart';
import 'package:weatherapp/services/imagehelperservice.dart';
import 'package:weatherapp/services/weatherserviceprovider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {        
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Consumer<WeatherServiceProvider>(
        builder: (context, weatherServiceProvider, child) {
          final weatherCondition =
              weatherServiceProvider.weather?.weather?.first.main ?? 'unknown';
          //print('Weather Condition: $weatherCondition');
          //final bgImage = ImageHelper.getBgImage(weatherCondition.toString());
          final bgColor = ColorSelector.getColor(weatherCondition.toString());
          //print('Background Image: $bgColor');

          return Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(color: bgColor
                // image: DecorationImage(
                //     image: AssetImage(bgImage), fit: BoxFit.cover)
                ),
            child: const HeadPartHome(),
          );
        },
      ),
    );
  }
}
