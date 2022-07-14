import 'package:get/get.dart';

import '../clients/rest_client.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(RestClient());
  }
}
