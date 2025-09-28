import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class Navigationcontroller extends GetxController {
  var pageIndex = 0.obs;

  void onPageChange(int index) {
    pageIndex.value = index;

    print("page index is ${pageIndex}");
  }
}
