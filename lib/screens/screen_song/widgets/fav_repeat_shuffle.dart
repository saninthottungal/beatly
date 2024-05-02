import 'package:flutter/material.dart';

class FavRepeatShuffleRow extends StatelessWidget {
  const FavRepeatShuffleRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.favorite_border),
        //repeat,shuffle row
        Row(
          children: [
            Icon(Icons.repeat),
            SizedBox(width: 15),
            Icon(Icons.shuffle),
          ],
        ),
      ],
    );
  }
}
