import 'package:flutter/material.dart';
import 'package:flutter_shopper/utils/colors.dart';

import 'package:nb_utils/nb_utils.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.isSmall = false,
      this.isTransparent = false})
      : super(key: key);

  final String title;
  final Function()? onPressed;
  final bool isSmall;
  final bool isTransparent;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          fixedSize: !isSmall ? Size(context.width() - 32, 48) : Size(80, 12),
          side: BorderSide(color: isTransparent ? Colors.transparent : black)),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: black,fontSize: 16, fontWeight: FontWeight.w700 ),
      ),
    );
  }
}
