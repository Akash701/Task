import 'package:demo_proj1/ApiService/TaskDataAPI.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NotificationController extends GetxController {
  var TaskListList = [].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchTaskData();
    // TODO: implement onInit
    super.onInit();
  }

  void fetchTaskData() async {
    try {
      isLoading(true);
      var searchResults = await TaskDataApi.getTaskData();
      if (searchResults != null) {
        TaskListList.assignAll(searchResults);
      }
    } finally {
      isLoading(false);
    }
  }
}
