import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weatherapp/utils/apptext.dart';

class TemperatureCard extends StatelessWidget {
  const  TemperatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0.0, 0.5),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
        width: 250,
        height: 150,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/json/animated/cloudy-day-1.svg'),
                    Column(
                      children: [
                        AppText(
                          data: "Temp",
                          size: 20,
                        ),
                        AppText(
                          data: '32 °C',
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/json/static/rainy-1.svg'),
                    Column(
                      children: [
                        AppText(
                          data: "Temp",
                          size: 20,
                        ),
                        AppText(
                          data: '32 °C',
                          size: 18,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/json/static/thunder.svg'),
                    Column(
                      children: [
                        AppText(
                          data: "Temp",
                          size: 20,
                        ),
                        AppText(
                          data: '32 °C',
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/json/static/night.svg'),
                    Column(
                      children: [
                        AppText(
                          data: "Temp",
                          size: 20,
                        ),
                        AppText(
                          data: '32 °C',
                          size: 18,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
