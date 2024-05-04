import 'package:flutter/material.dart';

class PlayWidget extends StatelessWidget {
  const PlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(
          Icons.skip_previous_outlined,
          size: 50,
        ),
        IconButton(
          icon: const Icon(
            Icons.play_arrow_outlined,
            size: 50,
          ),
          onPressed: () async {},
        ),
        const Icon(
          Icons.skip_next_outlined,
          size: 50,
        ),
      ],
    );
  }
}
