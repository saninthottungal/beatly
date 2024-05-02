import 'package:flutter/material.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          Icons.skip_previous_outlined,
          size: 50,
        ),
        Icon(
          Icons.play_arrow_outlined,
          size: 50,
        ),
        Icon(
          Icons.skip_next_outlined,
          size: 50,
        )
      ],
    );
  }
}
