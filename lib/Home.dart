import 'package:flutter/material.dart';
import 'CheckText.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool click = false;
  bool Success = false;
  TextEditingController displayController = TextEditingController();
  TextEditingController selectionController = TextEditingController();
  TextEditingController alphabetController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              CheckText("Total No of Boxes to be displayed on each side",
                  displayController),
              Divider(thickness: 7, color: Colors.black),
              CheckText(
                  "Max No of Total Selections allowed for selecting on both the sides",
                  selectionController),
              SizedBox(
                height: 5,
              ),
              CheckText(
                  "Max No of Alphabets allowed for selecting on both the sides",
                  alphabetController),
              SizedBox(
                height: 5,
              ),
              CheckText(
                  "Max No of Number allowed for selecting", numberController),

              Divider(thickness: 2, color: Colors.black),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        CheckboxListTile(
                          title: Text("title text"),
                          value: click,
                          onChanged: (newValue) {
                            setState(() {
                              click = newValue!;
                            });
                          },
                          controlAffinity: ListTileControlAffinity
                              .leading, //  <-- leading Checkbox
                        ),
                      ],
                    ),
                    VerticalDivider(),
                    Column(
                      children: [
                        Text('CheckBox2'),
                      ],
                    ),
                  ],
                ),
              )

              //   InputBox("Max No total Selection allowed for selecting on both sides",
              //       click),
              //   InputBox("Max No of Alphabets allowed for selecting ", click),
              //   InputBox("Max no of Numbers allowed for selecting ", click),
              //   SizedBox(
              //     height: 20,
              //   ),
              //   Divider(
              //     thickness: 3,
              //   ),
              //   Row(
              //     children: [
              //       Column(
              //         children: [
              //           CheckBox(click, 'a'),
              //           CheckBox(click, 'b'),
              //           CheckBox(click, 'c'),
              //           CheckBox(click, 'd'),
              //           CheckBox(click, 'e'),
              //           CheckBox(click, 'f'),
              //           CheckBox(click, 'g'),
              //           CheckBox(click, 'h'),
              //           CheckBox(click, 'i'),
              //           CheckBox(click, 'j'),
              //           CheckBox(click, 'k'),
              //         ],
              //       ),
              //       VerticalDivider(
              //         thickness: 3,
              //       ),
              //       Column(
              //         children: [
              //           CheckBox(click, '1'),
              //           CheckBox(click, '2'),
              //           CheckBox(click, '3'),
              //           CheckBox(click, '4'),
              //           CheckBox(click, '5'),
              //           CheckBox(click, '6'),
              //           CheckBox(click, '7'),
              //           CheckBox(click, '8'),
              //           CheckBox(click, '9'),
              //           CheckBox(click, '10'),
              //           CheckBox(click, '11'),
              //         ],
              //       ),
              //     ],
              //   ),
              //   Row(
              //     children: [
              //       Container(
              //         child: Center(child: Text("Reset all values to '0'")),
              //         width: double.infinity,
              //         color: kBottomColor,
              //       ),
              //       Container(
              //         child: Center(child: Success == true ? SuccessText : ErrorText),
              //         margin: EdgeInsets.only(top: 10),
              //         width: double.infinity,
              //         color: Success == true ? kBottomSuccess : kBottomError,
              //         height: kBottomHeight,
              //         padding: EdgeInsets.only(bottom: 20),
              //       ),
              //     ],
              //   ),
            ],
          ),
        ),
      ),
    );
  }
}
