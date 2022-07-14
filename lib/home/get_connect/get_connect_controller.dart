import 'package:get/get.dart';
import 'package:poc_pattern_example/repository/i_servidor_repository.dart';

class GetConnectController extends GetxController with StateMixin {
  final IServidorRepository _httpRepository;

  GetConnectController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findByCpf();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }

  Future<void> findByCpf() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findUserByCpf('02221887310');
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuário'));
    }
  }
}
