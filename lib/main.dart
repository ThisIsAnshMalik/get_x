import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/view/home.dart';
import 'package:get_x/view/second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeView(),
      getPages: [
        GetPage(name: "/home", page: (() => const HomeView())),
        GetPage(name: "/second", page: (() => const SecondScreen()))
      ],
    );
  }
}
