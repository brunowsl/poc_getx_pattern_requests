import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:poc_pattern_example/home/dio/dio_controller.dart';
import 'package:poc_pattern_example/home/dio/repository/user_repository_dio.dart';
import 'package:poc_pattern_example/repository/i_servidor_repository.dart';

class DioBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(Dio());
    Get.put<IServidorRepository>(UserRepositoryDio(Get.find()));
    Get.put(DioController(Get.find()));
  }
}
