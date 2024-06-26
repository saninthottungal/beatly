import 'package:flutter/material.dart';

import 'Widgets/drawer_component.dart';

class CustomDrawerWidget extends StatelessWidget {
  const CustomDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.music_note_outlined,
              size: 70,
            ),
          ),
          DrawerComponentWidget(
            icon: Icons.person,
            title: "Profile",
            onTap: () {},
          ),
          DrawerComponentWidget(
            icon: Icons.favorite,
            title: 'Favorites',
            onTap: () {
              Navigator.pushNamed(context, '/favorites');
            },
          ),
          DrawerComponentWidget(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () => Navigator.pushNamed(context, '/settings'),
          )
        ],
      ),
    );
  }
}
