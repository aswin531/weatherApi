import 'package:flutter/material.dart';
import 'package:weatherapp/screens/widgets/headparthome.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Container(
        height: size.height,
        width: size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/download (6).jpg'),
                fit: BoxFit.cover)),
        child: const HeadPartHome(),
      ),
    );
  }
}
