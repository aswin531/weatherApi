// ignore_for_file: avoid_print
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:weatherapp/api/apisconstants.dart';
import 'package:weatherapp/models/weathermodel.dart';
import 'package:http/http.dart' as http;

class WeatherServiceProvider extends ChangeNotifier {
  WeatherModel? _weatherModel;

  WeatherModel? get weather =>
      _weatherModel; // getter for accesing private model

  bool _isLoading = false;
//getter
  bool get isLoading => _isLoading;

  //error
  String _error = "";
  String get error => _error;

  //function ==>> fetch Weather data
  Future<void> fetchWeatherDataByCity(String city) async {
    _isLoading = true;
    _error = "";
    try {
      final apiUrl =
          "${APIEndPoints().cityUrl}$city&appid=${APIEndPoints().apiKey}${APIEndPoints().unit}";

      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final data =
            jsonDecode(response.body); //response body contains json => convert
        print(data);
        _weatherModel =
            WeatherModel.fromJson(data); // cnverting json into WeatherModel
        notifyListeners();
      } else {
        _error = "Failed to Load data";
      }
    } catch (e) {
      _error = "Failed to Load data $e";
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
