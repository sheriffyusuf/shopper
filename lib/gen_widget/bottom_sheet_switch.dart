import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_shopper/utils/colors.dart';

class BottomSheetSwitch extends HookWidget {
  const BottomSheetSwitch(
      {required this.value, required this.onChanged, Key? key})
      : super(key: key);

  final bool value;
  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    final _value = useState(value);
    return CupertinoSwitch(
        activeColor: kAppColor,
        value: _value.value,
        onChanged: (bool value) {
          _value.value = value;
          onChanged(value);
        });
  }
}
