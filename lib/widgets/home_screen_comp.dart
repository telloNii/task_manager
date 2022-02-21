import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'current_task_tile.dart';
import 'home_screen_task_status_tile.dart';

class HomeScreenComposition extends StatefulWidget {
  const HomeScreenComposition({Key? key}) : super(key: key);

  @override
  _HomeScreenCompositionState createState() => _HomeScreenCompositionState();
}

class _HomeScreenCompositionState extends State<HomeScreenComposition> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      children: [
        const Gap(20),
        const Text(
          "Hi Todd",
          style: TextStyle(
            fontSize: 26.0,
            fontFamily: "Poppins",
            color: Colors.white,
            fontWeight: FontWeight.w400,
          ),
        ),
        const Text(
          "6 Tasks are pending",
          style: TextStyle(
            color: Colors.white70,
            fontFamily: "Poppins",
          ),
        ),
        const CurrentTaskCard(
          taskTitle: 'Mobile App Development',
          isHomeScreen: true,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Monthly Review",
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.lightBlueAccent,
                child: Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Column(
                children: const [
                  HomeScreenTaskStatusTile(
                    taskNumber: 22,
                    status: "Done",
                    height: 150.0,
                  ),
                  HomeScreenTaskStatusTile(
                    taskNumber: 10,
                    status: "Ongoing",
                    height: 110.0,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: const [
                  HomeScreenTaskStatusTile(
                    taskNumber: 7,
                    status: "In Progress",
                    height: 110.0,
                  ),
                  HomeScreenTaskStatusTile(
                    taskNumber: 12,
                    status: "Waiting for Review",
                    height: 150.0,
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
