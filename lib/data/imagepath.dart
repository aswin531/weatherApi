//List<String> background = ["assets/img/bg1.jpg"];

String getImagePath(String key) {
  Map<String, dynamic> imagePath = {
    'logo': '',
    'cloudySun': 'assets/json/static/cloudy-day-2.svg',
    'cloudyNight': 'assets/json/static/cloudy-night-2.svg',
    'rain': 'assets/json/static/rainy-7.svg',
    'day': 'assets/json/static/day.svg',
    'night': 'assets/json/static/night.svg',
    'snowy': 'assets/json/static/snowy-5.svg',
    'thunder': 'assets/json/static/thunder.svg',
  };
  return imagePath[key] ?? '';
}
