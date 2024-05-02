import 'package:flutter/material.dart';

import 'Drawer/drawer.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar
      appBar: AppBar(
        title: const Text("BEATLY"),
      ),
      //drawer
      drawer: const CustomDrawerWidget(),
      //body
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("data"),
        ),
      ),
    );
  }
}
