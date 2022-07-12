import 'dart:convert';

import 'package:poc_pattern_example/model/user_model.dart';
import 'package:poc_pattern_example/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response =
        await http.get(Uri.parse('http://localhost:8080/cache/api/servidores'));
    final List<Map<String, dynamic>> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}
