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