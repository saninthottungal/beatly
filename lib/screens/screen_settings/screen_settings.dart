import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenSettings extends StatelessWidget {
  const ScreenSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        title: const Text("SETTINGS"),
      ),
      //body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dark Theme",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            CupertinoSwitch(value: true, onChanged: (value) {})
          ],
        ),
      ),
    );
  }
}
