import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weatherapp/screens/widgets/bodyparthome.dart';
import 'package:weatherapp/utils/apptext.dart';
import 'package:weatherapp/utils/imagepath.dart';

class HeadPartHome extends StatelessWidget {
  const HeadPartHome({super.key});

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
                      icon: const Icon(FontAwesomeIcons.locationDot)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        data: 'Calicut',
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
                  ),
                ],
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))
            ],
          ),
        ),
        Align(alignment: Alignment.topRight, child: Image.asset(thunderBlack)),
        HomeBodypart(),
      ],
    );
  }
}
