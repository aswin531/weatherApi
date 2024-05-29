import 'package:flutter/material.dart';

class TemperatureCard extends StatelessWidget {
  const TemperatureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)),
          width: double.infinity,
          height: 300,
          child: Column(
            children: [
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
      ),
    );
  }
}
