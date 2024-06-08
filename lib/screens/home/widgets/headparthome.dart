import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/providers/locationprovider.dart';
import 'package:weatherapp/providers/weatherserviceprovider.dart';
import 'package:weatherapp/utils/apptext.dart';

class HeadPartHome extends StatefulWidget {
  const HeadPartHome({super.key});

  @override
  State<HeadPartHome> createState() => _HeadPartHomeState();
}

class _HeadPartHomeState extends State<HeadPartHome> {
  @override
  void initState() {
    super.initState();
    final locationProvider =
        Provider.of<LocationProvider>(context, listen: false);
    locationProvider.getPosition().then((_) {
      if (locationProvider.currentLocationName != null) {
        var city = locationProvider.currentLocationName!.locality;
        if (city != null) {
          Provider.of<WeatherServiceProvider>(context, listen: false)
              .fetchWeatherDataByCity(city);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<LocationProvider>(
            builder: (context, locationProvider, child) {
              String locationCity =
                  locationProvider.currentLocationName?.locality ??
                      "Unknown City";
              return AppText(
                data: locationCity,
                color: Colors.white,
                fw: FontWeight.w600,
                size: 23,
              );
            },
          ),
        ],
      ),
    );
  }
}
