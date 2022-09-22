import 'package:flutter/material.dart';

class HelpButton extends StatelessWidget {
  final double isCurrentPage;
  const HelpButton({super.key, required this.isCurrentPage});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.help_center_rounded),
      iconSize: 45,
      color: isCurrentPage == 0
          ? const Color.fromRGBO(255, 255, 255, 1)
          : const Color.fromRGBO(17, 17, 17, 1),
      onPressed: () {
        Scaffold.of(context).openEndDrawer();
      },
    );
  }
}
