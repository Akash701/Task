import 'package:flutter/material.dart';

class CheckBox extends StatelessWidget {
  CheckBox(this.click, this.text);
  String text;
  bool click = false;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Checkbox(
              value: click,
              onChanged: (value) {
                click = value!;
              }),
          Text(text),
        ]);
  }
}
