// ignore_for_file: avoid_print

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<Placemark?> getLocationName(Position? position) async {
    if (position != null) {
      try {
        final placemark = await placemarkFromCoordinates(
            position.latitude, position.longitude);
        if (placemark.isNotEmpty) {
          return placemark[0];
        }
      } catch (e) {
        print("Error while fetching location name");
      }
      // return null;
    }
    return null;
  }
}
  