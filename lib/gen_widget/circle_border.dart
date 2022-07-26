import 'package:flutter/material.dart';

class CircleBorder extends StatelessWidget {
  const CircleBorder(BuildContext context, {required this.child, required this.color});

  final Widget child;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: color ?? Colors.grey.shade300),
            shape: BoxShape.circle),
        child: child);
  }
}

