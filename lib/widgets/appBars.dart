import 'package:flutter/material.dart';

PreferredSizeWidget tasksCalendarAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFFDBE9F6),
    elevation: 0,
    leading: IconButton(
      onPressed: () {
        // Navigator.pop(BuildContext context);
      },
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/75843984.jpeg"),
          ),
        ),
      )
    ],
  );
}

PreferredSizeWidget homeScreenAppBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: const Color(0xFF4B37BA),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.bar_chart_rounded),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage("assets/images/75843984.jpeg"),
          ),
        ),
      )
    ],
  );
}
