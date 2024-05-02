import 'package:flutter/material.dart';

class CustomSongConainer extends StatelessWidget {
  const CustomSongConainer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
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
    );
  }
}
