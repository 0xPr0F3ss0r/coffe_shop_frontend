import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomePageController extends GetxController {
  var index = 0.obs;

  void Switch(int newIndex) {
    index.value = newIndex;
  }
}
