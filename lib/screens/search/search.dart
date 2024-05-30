import 'package:flutter/material.dart';
import 'package:weatherapp/utils/colors.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: bgMistOpcty),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: kDefaultIconDarkColor,
            size: 30,
          ),
          const SizedBox(
            width: 10,
          ),
          const Flexible(
              flex: 4,
              child: TextField(
                decoration: InputDecoration(
                    hintText: "Find Here ...", border: InputBorder.none),
              )),
          Container(
            height: 25,
            width: 1.5,
            color: grey,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.tune,
                color: grey,
              ))
        ],
      ),
    );
  }
}


// // Access the humidity value
// int humidity = weatherData['main']['humidity'];
// print('Humidity: $humidity');

// // Access the wind speed value
// double windSpeed = weatherData['wind']['speed'];
// print('Wind Speed: $windSpeed');
