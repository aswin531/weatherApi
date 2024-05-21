import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screens/widgets/bodyparthome.dart';
import 'package:weatherapp/screens/widgets/tempcard.dart';
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
    return Stack(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(FontAwesomeIcons.locationDot),
                  ),
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
                          AppText(
                            data: 'Good Night',
                            color: Colors.white,
                            fw: FontWeight.w600,
                            size: 16,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    clicked = !clicked;
                  });
                },
                icon: const Icon(Icons.search),
              ),
            ],
          ),
        ),
        if (clicked)
          Positioned(
            left: 20,
            right: 20,
            top: 150,
            child: TextFormField(
              decoration: InputDecoration(
                focusedBorder: InputBorder.none,
                border: UnderlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        // Align(alignment: Alignment.topRight, child: Image.asset(thunderBlack)),
        const HomeBodypart(),
        const TemperatureCard(),
      ],
    );
  }
}
