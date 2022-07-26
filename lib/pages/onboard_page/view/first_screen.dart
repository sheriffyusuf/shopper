import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nb_utils/nb_utils.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Expanded(
          flex: 3,
          child: Stack(
            children: [
              SvgPicture.asset(
                "assets/images/logo.svg",
                height: context.height() * 0.25,
              ),
              Center(
                child: SvgPicture.asset(
                  "assets/images/logo.svg",
                  height: context.height() * 0.25,
                ), /* Assets.images.logo
                    .image(width: context.width() - 164), */
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Container(
                height: 100,
                width: 200,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    )),
                child: const Center(
                  child: Text(
                    "Explore Us",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                )),
          ),
        )
      ],
    ));
  }
}
