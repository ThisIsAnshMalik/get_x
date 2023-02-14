import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_interpolation_to_compose_strings
        title: Text("Second Screen " + Get.arguments[2]),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: InkWell(
            onTap: () => Get.toNamed("/home"), child: const Text("Go back")),
      ),
    );
  }
}
