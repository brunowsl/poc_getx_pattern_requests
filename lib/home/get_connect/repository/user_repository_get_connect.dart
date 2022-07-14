import 'package:get/get.dart';
import 'package:poc_pattern_example/clients/rest_client.dart';
import 'package:poc_pattern_example/model/servidor_model.dart';

import '../../../repository/i_servidor_repository.dart';

class UserRepositoryGetConnect implements IServidorRepository {
  final RestClient restClient;

  UserRepositoryGetConnect(this.restClient);

  @override
  Future<List<ServidorModel>> findAllUsers() {
    // TODO: implement findAllUsers
    throw UnimplementedError();
  }

  @override
  Future<ServidorModel> findUserByCpf(String cpf) async {
    final response = await restClient
        .get('http://localhost:8080/cache/api/servidores/by-cpf-dto/$cpf');
    print(response.body);
    return ServidorModel.fromMap(response.body);
  }
}
