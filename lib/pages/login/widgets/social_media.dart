import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({Key? key, required this.image}) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1),
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
            //topRight:  Radius.circular(40.0),
          )),
      child: SizedBox(
        height: 50,
        width: 50,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            "assets/images/$image.svg",
          ),
        ),
      ),
    );
  }
}
