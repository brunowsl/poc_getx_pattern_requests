import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_pattern_example/home/get_connect/get_connect_controller.dart';

import '../../model/servidor_model.dart';

class GetConnectPage extends GetView<GetConnectController> {
  const GetConnectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetConnectPage'),
      ),
      body: controller.obx((state) {
        final ServidorModel user = state;
        return Column(
          children: [
            Container(
              child: Center(
                child: Text(user.matricula.toString()),
              ),
            ),
            Container(
              child: Center(
                child: Text(user.nome),
              ),
            ),
            Container(
              child: Center(
                child: Text(user.lotacaoExercicio),
              ),
            ),
          ],
        );
      }, onError: (error) {
        return SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(error!),
              TextButton(
                onPressed: () => controller.findByCpf(),
                child: const Text('Tentar novamente'),
              ),
            ],
          ),
        );
      }),
    );
  }
}
