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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text("GetX dialog alert"),
                subtitle: const Text("GetX dialog alert with Getx"),
                onTap: () {
                  Get.defaultDialog(
                      title: "Delete",
                      middleText: "Second utils of the Getx",
                      textConfirm: "Yes",
                      textCancel: "No");
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("GetX Bottom Sheet"),
                subtitle: const Text("GetX Bottom Sheet with Getx"),
                onTap: () {
                  Get.bottomSheet(Container(
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text("Light Mode"),
                          leading: const Icon(Icons.light_mode),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                            Get.back();
                          },
                        ),
                        ListTile(
                          title: const Text("Dark Mode"),
                          leading: const Icon(Icons.dark_mode),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                            Get.back();
                          },
                        )
                      ],
                    ),
                  ));
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Go to Second Screen"),
                subtitle: const Text("GetX Routing "),
                onTap: () {
                  Get.toNamed("/second");
                },
              ),
            ),
          ],
        ),
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
