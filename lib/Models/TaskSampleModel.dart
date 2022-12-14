import 'dart:convert';

List<TaskModel> taskFromJson(String str) =>
    List<TaskModel>.from(json.decode(str).map((x) => TaskModel.fromJson(x)));

String taskToJson(List<TaskModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TaskModel {
  TaskModel({
    this.id,
    required this.taskName,
  });

  int? id;
  String taskName;

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel(
        id: json["id"],
        taskName: json["taskname"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "taskname": taskName,
      };
}
