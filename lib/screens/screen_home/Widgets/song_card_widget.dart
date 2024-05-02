import 'package:flutter/material.dart';

class SongCardWidget extends StatelessWidget {
  const SongCardWidget({
    super.key,
    required this.title,
    required this.artist,
    required this.imagePath,
    required this.heading,
  });
  final String heading;
  final String title;
  final String artist;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            heading,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        LimitedBox(
          maxHeight: height * 0.36,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    width: 190,
                    height: height * 0.27,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    artist,
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              );
            },
            itemCount: 10,
          ),
        )
      ],
    );
  }
}
