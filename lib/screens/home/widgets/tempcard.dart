import 'package:flutter/material.dart';

class TemperatureCard extends StatelessWidget {
  const TemperatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.amber,
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Row(
            //       children: [
            //         AppText(
            //           data: DateFormat('EEEE').format(DateTime.now()),
            //           color: accents,
            //         ),
            //         Column(
            //           children: [
            //             SvgPicture.asset(
            //                 'assets/json/animated/cloudy-day-1.svg'),
            //             AppText(
            //               data: "Max Temp",
            //               size: 20,
            //             ),
            //             AppText(
            //               data: '32 °C',
            //               size: 18,
            //             )
            //           ],
            //         )
            //       ],
            //     ),
            //     const SizedBox(
            //       width: 15,
            //     ),
            //     Row(
            //       children: [
            //         SvgPicture.asset('assets/json/static/rainy-1.svg'),
            //         Column(
            //           children: [
            //             AppText(
            //               data: "Temp",
            //               size: 20,
            //             ),
            //             AppText(
            //               data: '32 °C',
            //               size: 18,
            //             )
            //           ],
            //         )
            //       ],
            //     )
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   children: [
            //     Row(
            //       children: [
            //         SvgPicture.asset('assets/json/static/thunder.svg'),
            //         Column(
            //           children: [
            //             AppText(
            //               data: "Temp",
            //               size: 20,
            //             ),
            //             AppText(
            //               data: '32 °C',
            //               size: 18,
            //             )
            //           ],
            //         )
            //       ],
            //     ),
            //     const SizedBox(
            //       width: 15,
            //     ),
            //     Row(
            //       children: [
            //         SvgPicture.asset('assets/json/static/night.svg'),
            //         Column(
            //           children: [
            //             AppText(
            //               data: "Temp",
            //               size: 20,
            //             ),
            //             AppText(
            //               data: '32 °C',
            //               size: 18,
            //             )
            //           ],
            //         )
            //       ],
            //     )
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
