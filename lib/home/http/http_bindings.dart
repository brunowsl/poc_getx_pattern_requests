import 'package:get/get.dart';
import 'package:poc_pattern_example/home/http/repository/user_http_repository.dart';
import 'package:poc_pattern_example/repository/i_user_repository.dart';

import 'http_controller.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepository>(UserHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
