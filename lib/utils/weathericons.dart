import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeatherIcons {
  static final Map<String, String> svgPaths = {
    'cloudy': 'assets/json/animated/cloudy-day-1.svg'
  };
}

class WeatherIcon extends StatelessWidget {
  final String temperature;
  const WeatherIcon({super.key, required this.temperature});

  @override
  Widget build(BuildContext context) {
    String svgPath =
        WeatherIcons.svgPaths[temperature] ?? 'assets/json/animated/day.svg';
    return SvgPicture.asset(svgPath);
  }
}
