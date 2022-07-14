import 'package:get/get.dart';
import 'package:poc_pattern_example/clients/rest_client.dart';
import 'package:poc_pattern_example/home/get_connect/get_connect_controller.dart';
import 'package:poc_pattern_example/home/get_connect/repository/user_repository_get_connect.dart';
import 'package:poc_pattern_example/repository/i_servidor_repository.dart';

class GetConnectBindings implements Bindings {
  @override
  void dependencies() {
    // FOI ADICIONADO NA CAMADA ACIMA PELO HOME_BINDINGS.DART. Assim todos os filhos herdam essa dependência. Portanto nao precisa adicionar aqui.
    // Get.put(RestClient());
    Get.put<IServidorRepository>(UserRepositoryGetConnect(Get.find()));
    Get.put(GetConnectController(Get.find()));
  }
}
