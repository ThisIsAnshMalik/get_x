import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Getx State Management"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar("Ansh Malik", "First utils of the Getx",
              snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.red);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
