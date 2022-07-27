import 'package:flutter/material.dart';

import 'package:nb_utils/nb_utils.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.isDisabled = false,
      this.color = Colors.black});
  final bool isDisabled;
  final Function()? onPressed;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isDisabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      child: isDisabled
          ? Text(
              title,
              style:const TextStyle(fontSize: 16.0),
            ).center().withSize(
                width: context.width() - 32,
                height: 48,
              )
          : Ink(
              decoration: BoxDecoration(
                  color: color,
                  /* gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [KAppColor, kAppLightColor]), */
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                width: context.width() - 32,
                height: 48,
                alignment: Alignment.center,
                child: Text(
                  title,
                  style:const TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ),
    );
  }
}
