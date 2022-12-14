import 'package:demo_proj1/GetxController/GetxController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'ListTile.dart';

class Tasklist extends StatelessWidget {
  final gettextcontroller = Get.find<GettextController>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<GettextController>(builder: (_) {
      return ListView.builder(
        itemBuilder: (context, index) => Tasktile(
          listname: gettextcontroller.taskAlpha[index].name,
          ischeked: gettextcontroller.taskAlpha[index].isDone,
          checkBox: (checkBoxSate) {
            gettextcontroller.tsakUpdate(gettextcontroller.taskAlpha[index]);
          },
          delete: () {
            gettextcontroller.delete(gettextcontroller.taskAlpha[index]);
          },
        ),
        itemCount: gettextcontroller.taskAlpha.length,
      );
    });
  }
}
