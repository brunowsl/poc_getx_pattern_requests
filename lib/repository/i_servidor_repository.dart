import '../model/servidor_model.dart';

abstract class IServidorRepository {
  Future<List<ServidorModel>> findAllUsers();
  Future<ServidorModel> findUserByCpf(String cpf);
}
