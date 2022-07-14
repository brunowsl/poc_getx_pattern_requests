import 'package:get/get.dart';

import '../../repository/i_servidor_repository.dart';

class DioController extends GetxController with StateMixin {
  final IServidorRepository _dioRepository;

  DioController(this._dioRepository);

  @override
  void onInit() {
    super.onInit();
    findByCpf();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _dioRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuários'));
    }
  }

  Future<void> findByCpf() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _dioRepository.findUserByCpf('02221887310');
      change(dados, status: RxStatus.success());
    } catch (e) {
      print(e);
      change([], status: RxStatus.error('Erro ao buscar usuário'));
    }
  }
}
