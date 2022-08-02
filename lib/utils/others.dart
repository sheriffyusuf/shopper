import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

showSnackberFail({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: Colors.red,
    duration: const Duration(milliseconds: 400),
  ));
}

showSnackberSuccess({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    backgroundColor: Colors.green,
    duration: const Duration(milliseconds: 300),
  ));
}


const kSilvershape = RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)));
final kButtonGradientColor = BoxDecoration(
  borderRadius: BorderRadius.circular(15.0),
  
);

const kGradient = LinearGradient(
  colors: [
    Color(0xFF852CF7),
    Color(0xFFA03DF7),
  ],
  begin: FractionalOffset(-1.0, -1),
  end: FractionalOffset(-1.0, 1),
  stops: [0.0, 1.0],
  tileMode: TileMode.clamp,
);
final kDownGradientColor = BoxDecoration(
  borderRadius: BorderRadius.circular(15.0),
  gradient: const LinearGradient(
    colors: [
      Color(0xFFFC7B6F),
      Color(0xFFE73B6A),
    ],
    begin: FractionalOffset(-1.0, -1),
    end: FractionalOffset(-1.0, 1),
    stops: [0.0, 1.0],
    tileMode: TileMode.clamp,
  ),
);
