import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_pattern_example/model/user_model.dart';

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
        return ListView.builder(
          itemCount: state.length,
          itemBuilder: (context, index) {
            final UserModel user = state[index];
            return ListTile(
              title: Text(user.name),
              subtitle: Text(user.username),
            );
          },
        );
      }, onError: (error) {
        return Center(
          child: Text('Error'),
        );
      }),
    );
  }
}
