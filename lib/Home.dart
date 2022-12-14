import 'package:demo_proj1/GetxController/GetxController.dart';
import 'package:demo_proj1/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'CheckingClass/CheckText.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool click = false;
  bool Success = true;
  GettextController gettextController = Get.put(GettextController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.all(20),
            child: GetBuilder<GettextController>(
              builder: (_) => Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  CheckText("Total No of Boxes to be displayed on each side",
                      gettextController.displayController),
                  Divider(thickness: 7, color: Colors.black),
                  CheckText(
                      "Max No of Total Selections allowed for selecting on both the sides",
                      gettextController.selectionController),
                  SizedBox(
                    height: 5,
                  ),
                  CheckText(
                      "Max No of Alphabets allowed for selecting on both the sides",
                      gettextController.alphabetController),
                  SizedBox(
                    height: 5,
                  ),
                  CheckText("Max No of Number allowed for selecting",
                      gettextController.numberController),

                  Divider(thickness: 2, color: Colors.black),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: CheckboxListTile(
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
                              ),
                            ],
                          ),
                        ),
                        VerticalDivider(),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                        ),
                      ],
                    ),
                  ),

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
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child: Container(
                            child: Center(
                              child: Text("Reset all values to '0"),
                            ),
                            margin: EdgeInsets.only(top: 10),
                            width: double.infinity,
                            color: Colors.purple,
                            // height: kBottomcontainerHeight,
                            padding: EdgeInsets.only(bottom: 20),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            child: Center(
                                child: Success ? SuccessText : ErrorText),
                            margin: EdgeInsets.only(top: 10),
                            width: double.infinity,
                            color: Success ? kBottomSuccess : kBottomError,
                            // height: kBottomcontainerHeight,
                            padding: EdgeInsets.only(bottom: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
