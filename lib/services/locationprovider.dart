import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weatherapp/services/locationservices.dart';

class LocationProvider with ChangeNotifier {
  // permission ask ==> fetch the location

  Position? _currentPosition;
  Position? get currentPosition => _currentPosition;
  final LocationService _locationService = LocationService();
  Placemark? _currentlocationName;
  //getter
  Placemark? get currentLocationName => _currentlocationName;

  //getting location req

  Future<void> getPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //check location is enabled ?
    if (!serviceEnabled) {
      _currentPosition = null;
      notifyListeners();
      return;
    }
    //check permission that we can access the location if location is enabled
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        _currentPosition = null;
        notifyListeners();
        return;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      _currentPosition = null;
      notifyListeners();
      return;
    }
    // condition we have the permissions
    _currentPosition = await Geolocator.getCurrentPosition();
    print(_currentPosition);
    _currentlocationName =
        await _locationService.getLocationName(_currentPosition);
    print(_currentlocationName);

    notifyListeners();
  }
}
