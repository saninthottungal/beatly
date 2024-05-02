import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BEATLY"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(
              child: Icon(
                Icons.music_note,
                size: 50,
              ),
            ),
            InkWell(
              onTap: () {},
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Row(
                  children: [
                    const Icon(
                      Icons.settings,
                    ),
                    const SizedBox(width: 20),
                    Text(
                      "Settings",
                      style: Theme.of(context).textTheme.headlineSmall,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("data"),
        ),
      ),
    );
  }
}
