import 'package:flutter/material.dart';
import 'package:weatherapp/utils/colors.dart';

class ImageHelper {
  static String getBgImage(String weatherCondition) {
    switch (weatherCondition) {
      case 'Rain':
        return 'assets/img/rainy.jpg';
      case 'Clouds':
        return 'assets/img/cloudy.jpg';
      case 'Clear':
        return 'assets/img/clear.jpg';
      default:
        return 'assets/img/snow.jpg';
    }
  }
}

class ColorSelector {
  static Color getColor(String weatherCondition) {
    switch (weatherCondition) {
      case 'Rain':
        return bgRainyCalm;
      case 'Clouds':
        return bgCloudyCalm;
      case 'Clear':
        return bgSunny;
      case 'Drizzle':
        return bgDrizzleLight;
      case 'Fog':
        return bgFogLight;
      case 'Windy':
        return bgWindyEnergetic;
      case 'ThunderStorm':
        return bgThunderstormElectric;
        case 'Overcast':
        return bgOvercastDark;
      case 'Mist':
        return bgMistOpcty;
      default:
        return bgSunny;
    }
  }
}
