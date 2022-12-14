import 'package:flutter/material.dart';

class Tasktile extends StatelessWidget {
  Tasktile(
      {required this.listname,
      required this.ischeked,
      required this.checkBox,
      required this.delete});
  final String listname;
  final bool ischeked;
  final ValueChanged<bool?> checkBox;
  final VoidCallback delete;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: delete,
      title: Text(
        listname,
        style: TextStyle(
          decoration: ischeked ? TextDecoration.lineThrough : null,
          fontSize: 20,
        ),
      ),
      trailing: Checkbox(
        onChanged: checkBox,
        activeColor: Colors.lightBlueAccent,
        value: ischeked,
      ),
    );
  }
}
