import 'package:beatly/providers/settings_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dark theme",
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Switch(
                value: context.watch<ThemeProvider>().isDarkMode,
                onChanged: (bool? value) {
                  context.read<ThemeProvider>().setCurrentTheme =
                      value ?? false;
                }),
          ],
        ),
      ),
    );
  }
}
