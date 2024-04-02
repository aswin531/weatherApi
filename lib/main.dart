import 'package:flutter/material.dart';
import 'package:weatherapp/screens/home_screen.dart';
import 'package:weatherapp/utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        appBarTheme:const AppBarTheme(
          backgroundColor: transparent,elevation: 0
        ),
        iconTheme:const IconThemeData(
          color:primary 
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
