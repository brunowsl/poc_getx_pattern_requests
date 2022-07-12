import 'dart:convert';

import 'package:poc_pattern_example/model/servidor_model.dart';
import 'package:poc_pattern_example/repository/i_servidor_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IServidorRepository {
  @override
  Future<List<ServidorModel>> findAllUsers() async {
    final response = await http.get(Uri.parse(
        'http://localhost:8080/cache/api/servidores/by-cpf-dto/02221887310'));
    print(response.body);
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<ServidorModel>((resp) => ServidorModel.fromMap(resp))
        .toList();
  }

  @override
  Future<ServidorModel> findUserByCpf(String cpf) async {
    final response = await http.get(Uri.parse(
        'http://localhost:8080/cache/api/servidores/by-cpf-dto/$cpf'));
    print(response.body);
    final responseMap = jsonDecode(response.body);
    return ServidorModel.fromMap(responseMap);
  }
}
