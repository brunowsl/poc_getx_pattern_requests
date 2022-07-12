import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_pattern_example/model/servidor_model.dart';

import 'http_controller.dart';

class HttpPage extends GetView<HttpController> {
  const HttpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HTTP'),
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
        return Center(
          child: Text(error!),
        );
      }),
    );
  }
}
