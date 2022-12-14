import 'dart:convert';
import 'dart:core';
import 'package:demo_proj1/Models/TaskSampleModel.dart';
import 'package:http/http.dart' as http;

class TaskDataApi {
  static Future<dynamic> getTaskData() async {
    var uri = Uri.parse("");
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      try {
        var jasonString = response.body;
        print(jasonString);
        return taskFromJson(jasonString);
      } catch (e) {
        print(e);
      }
    } else {
      return null;
    }
  }
}
