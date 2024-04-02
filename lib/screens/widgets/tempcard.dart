import 'package:flutter/material.dart';
import 'package:weatherapp/utils/weathericons.dart';

class TemperatureCard extends StatelessWidget {
  const TemperatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Column(
        children: [
          Row(
            children: [WeatherIcon(temperature: 'cloudy')],
          )
        ],
      ),
    );
  }
}
