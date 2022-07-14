import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poc_pattern_example/home/get_connect/get_connect_bindings.dart';
import 'package:poc_pattern_example/home/get_connect/get_connect_page.dart';
import 'package:poc_pattern_example/home/home_bindings.dart';
import 'package:poc_pattern_example/home/home_page.dart';
import 'package:poc_pattern_example/home/http/http_bindings.dart';

import 'home/dio/dio_bindings.dart';
import 'home/dio/dio_page.dart';
import 'home/http/http_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: '/',
          page: () => const HomePage(),
          binding: HomeBindings(),
          children: [
            GetPage(
              name: '/http',
              page: () => const HttpPage(),
              binding: HttpBindings(),
            ),
            GetPage(
              name: '/getconnect',
              page: () => const GetConnectPage(),
              binding: GetConnectBindings(),
            ),
            GetPage(
              name: '/dio',
              page: () => const DioPage(),
              binding: DioBindings(),
            ),
          ],
        ),
      ],
    );
  }
}
