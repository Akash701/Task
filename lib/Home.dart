import 'package:demo_proj1/widgets.dart';
import 'package:flutter/material.dart';
import 'CheckBox.dart';
import 'InputBoxdart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool click = false;
  bool Success = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InputBox("Total No of Boxes to be displayed on each side", click),
          Divider(
            thickness: 7,
          ),
          InputBox("Max No total Selection allowed for selecting on both sides",
              click),
          InputBox("Max No of Alphabets allowed for selecting ", click),
          InputBox("Max no of Numbers allowed for selecting ", click),
          SizedBox(
            height: 20,
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            children: [
              Column(
                children: [
                  CheckBox(click, 'a'),
                  CheckBox(click, 'b'),
                  CheckBox(click, 'c'),
                  CheckBox(click, 'd'),
                  CheckBox(click, 'e'),
                  CheckBox(click, 'f'),
                  CheckBox(click, 'g'),
                  CheckBox(click, 'h'),
                  CheckBox(click, 'i'),
                  CheckBox(click, 'j'),
                  CheckBox(click, 'k'),
                ],
              ),
              VerticalDivider(
                thickness: 3,
              ),
              Column(
                children: [
                  CheckBox(click, '1'),
                  CheckBox(click, '2'),
                  CheckBox(click, '3'),
                  CheckBox(click, '4'),
                  CheckBox(click, '5'),
                  CheckBox(click, '6'),
                  CheckBox(click, '7'),
                  CheckBox(click, '8'),
                  CheckBox(click, '9'),
                  CheckBox(click, '10'),
                  CheckBox(click, '11'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                child: Center(child: Text("Reset all values to '0'")),
                width: double.infinity,
                color: kBottomColor,
              ),
              Container(
                child: Center(child: Success == true ? SuccessText : ErrorText),
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                color: Success == true ? kBottomSuccess : kBottomError,
                height: kBottomHeight,
                padding: EdgeInsets.only(bottom: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
