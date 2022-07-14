import 'package:dio/dio.dart';
import 'package:poc_pattern_example/model/servidor_model.dart';
import 'package:poc_pattern_example/repository/i_servidor_repository.dart';

class UserRepositoryDio implements IServidorRepository {
  final Dio _dio;

  UserRepositoryDio(this._dio);

  @override
  Future<List<ServidorModel>> findAllUsers() {
    // TODO: implement findAllUsers
    throw UnimplementedError();
  }

  @override
  Future<ServidorModel?> findUserByCpf(String cpf) async {
    try {
      final reponse = await _dio.get<ServidorModel>(
          'http://localhost:8080/cache/api/servidores/by-cpf-dto/$cpf');
      return reponse.data;
    } on DioError catch (e) {
      if (e.response?.statusCode == 500) {
        throw Exception('Problema no servidor');
      }
    }
  }
}
