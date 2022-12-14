import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../CheckingClass/CheckBox.dart';

class GettextController extends GetxController {
  TextEditingController displayController = TextEditingController();
  TextEditingController selectionController = TextEditingController();
  TextEditingController alphabetController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  List<Task> taskAlpha = [
    Task(name: 'a'),
    Task(name: 'b'),
    Task(name: 'c'),
  ].obs;

  List<Task> taskNumber = [
    Task(name: '1'),
    Task(name: '2'),
    Task(name: '3'),
  ].obs;

  void addTask(String newtasktitle) {
    final task = Task(name: newtasktitle);
    taskAlpha.add(task);
    update();
  }

  void tsakUpdate(Task task) {
    task.toggle();
    update();
  }

  void delete(Task task) {
    taskAlpha.remove(task);
    update();
  }
}
