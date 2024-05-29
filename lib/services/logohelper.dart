class LogoHelper{
  static String getLogo(String weatherCondition){
    switch(weatherCondition) {
      case 'rain':
        return 'assets/img/rainy.jpg';
      case 'clouds':
        return 'assets/img/cloudy.jpg';
      case 'clear':
        return 'assets/img/snow.jpg';
      default:
        return 'assets/img/clear.jpg';
    }
  }
}