import 'package:flutter/material.dart';

class ScreenFavorites extends StatelessWidget {
  const ScreenFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FAVORITES"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/images/pakaliravukal.png'),
                ),
              ),
            ),
            title: Text(
              "Pakaliravukal",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            subtitle: const Text("Sushin Shyam"),
            trailing: const Icon(Icons.favorite),
          );
        },
        itemCount: 10,
      ),
    );
  }
}
