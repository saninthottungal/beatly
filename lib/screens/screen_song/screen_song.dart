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
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, bottom: 50),
        //main column
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(width: double.infinity),
            //image container
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
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            //song and artist column
            Column(
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
            ),
            //favourite, shuffle,repeat row
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.favorite_border,
                ),
                //repeat,shuffle row
                Row(
                  children: [
                    Icon(
                      Icons.repeat,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.shuffle,
                    ),
                  ],
                ),
              ],
            ),

            Slider(
              value: 0.5,
              secondaryTrackValue: 1,
              onChanged: (value) {},
            ),
            const Row(
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
            ),
          ],
        ),
      ),
    );
  }
}
