import 'package:flutter/material.dart';

class CheckText extends StatelessWidget {
  CheckText(this.text, this.controller);
  String text;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text),
        Container(
          width: 25.0,
          height: 25.0,
          child: Container(
            child: Center(
              child: TextField(
                controller: controller,
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                autofocus: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black54),
              // borderRadius: BorderRadius.all(
              //   Radius.circular(8.0),
              // ),
            ),
          ),
        ),
      ],
    );
  }
}
