import 'package:beatly/providers/song_provider/playlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavRepeatRow extends StatelessWidget {
  const FavRepeatRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.repeat,
              color: context.watch<PlayListProvider>().isLoop
                  ? null
                  : Colors.grey),
          onPressed: () {
            context.read<PlayListProvider>().setIsLoop = true;
          },
        ),
        const Icon(Icons.favorite_border),
      ],
    );
  }
}
