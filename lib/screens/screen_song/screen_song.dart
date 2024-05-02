import 'package:flutter/material.dart';

class ScreenSong extends StatelessWidget {
  const ScreenSong({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "PLAYING NOW",
          style: TextStyle(letterSpacing: 4),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(width: double.infinity, height: 20),
          Container(
            height: size.height * 0.33,
            width: size.width * 0.65,
            decoration: BoxDecoration(
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/odimaga.png',
                ),
              ),
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Text("Odimaga"),
          Text("Sushin Shyam"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.speaker),
              Row(
                children: [
                  Icon(Icons.repeat),
                  Icon(Icons.shuffle),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("time"),
              Text("time"),
            ],
          ),
          Slider(
            value: 0.7,
            onChanged: (value) {},
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.skip_previous_outlined,
                size: 65,
              ),
              Icon(
                Icons.play_arrow_outlined,
                size: 65,
              ),
              Icon(
                Icons.skip_next_outlined,
                size: 65,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.favorite_border),
              Icon(Icons.queue_music_outlined),
              Icon(Icons.playlist_add)
            ],
          )
        ],
      ),
    );
  }
}
