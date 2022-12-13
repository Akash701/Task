import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  InputBox(this.text, this.click);
  String text;
  bool click;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Checkbox(
            value: click,
            onChanged: (value) {
              click = value!;
            })
      ],
    );
    ;
  }
}
