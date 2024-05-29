import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/screens/widgets/headparthome.dart';
import 'package:weatherapp/services/imagehelperservice.dart';
import 'package:weatherapp/services/weatherserviceprovider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Consumer<WeatherServiceProvider>(
        builder: (context, weatherServiceProvider, child) {
          final weatherCondition = weatherServiceProvider.weather?.weather?.first.main ?? 'unknown';
          String bgImage =
              ImageHelper.getBgImage(weatherCondition.toString());
          return Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(bgImage), fit: BoxFit.cover)),
            child: const HeadPartHome(),
          );
        },
      ),
    );
  }
}
