import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class AppBackButton extends StatelessWidget {
  const AppBackButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            // padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
                border: Border.all(color: black), shape: BoxShape.circle),
            margin: const EdgeInsets.only(left: 8.0),
            alignment: Alignment.center,
            child: const Icon(PhosphorIcons.arrowLeftLight))
        .onTap(onTap, splashColor: Colors.transparent);
  }
}
