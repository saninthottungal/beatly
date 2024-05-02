import 'package:flutter/material.dart';

class SongTitleArtistWidget extends StatelessWidget {
  const SongTitleArtistWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Odimaga",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          "Sushin Shyam",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
