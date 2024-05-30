import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screens/home/widgets/bodyparthome.dart';
import 'package:weatherapp/screens/home/widgets/tempcard.dart';
import 'package:weatherapp/screens/search/search.dart';
import 'package:weatherapp/services/locationprovider.dart';
import 'package:weatherapp/services/weatherserviceprovider.dart';
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

  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.14,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                enableFeedback: true,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CustomSearchBar(),
                  ));
                },
                icon: const Icon(FontAwesomeIcons.plus),
              ),
              Row(
                children: [
                  Consumer<LocationProvider>(
                    builder: (context, locationProvider, child) {
                      String locationCity =
                          locationProvider.currentLocationName?.locality ??
                              "Unknown City";
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            data: locationCity,
                            color: Colors.white,
                            fw: FontWeight.w600,
                            size: 23,
                          ),
                          // AppText(
                          //   data: 'Good Night',
                          //   color: Colors.white,
                          //   fw: FontWeight.w600,
                          //   size: 16,
                          // ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
        const HomeBodypart(),
        const TemperatureCard(),
      ],
    );
  }
}
