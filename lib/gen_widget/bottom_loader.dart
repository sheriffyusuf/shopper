import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class BottomLoader extends StatelessWidget {
  const BottomLoader({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator()
        // .withSize(width: 24.0, height: 24.0)
        .center()
        .withHeight(56);
  }
}
