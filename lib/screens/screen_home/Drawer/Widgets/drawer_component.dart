import 'package:flutter/material.dart';

class DrawerComponentWidget extends StatelessWidget {
  const DrawerComponentWidget({
    super.key,
    this.onTap,
    required this.icon,
    required this.title,
  });

  final void Function()? onTap;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 35),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 20),
            Text(
              title,
              style: Theme.of(context).textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }
}
