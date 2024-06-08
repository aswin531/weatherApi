import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/providers/bottomnavbar.dart';
import 'package:weatherapp/screens/bottom_nav_bar.dart';
import 'package:weatherapp/screens/home/home_screen.dart';
import 'package:weatherapp/providers/locationprovider.dart';
import 'package:weatherapp/providers/weatherserviceprovider.dart';
import 'package:weatherapp/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavBarProvider(),),
        ChangeNotifierProvider(create: (context) => LocationProvider()),
        ChangeNotifierProvider(create: (context) => WeatherServiceProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        theme: ThemeData(
          appBarTheme:
              const AppBarTheme(backgroundColor: transparent, elevation: 0),
          iconTheme: const IconThemeData(color: primary),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:BottomNavBarScreen(),
      ),
    );
  }
}
