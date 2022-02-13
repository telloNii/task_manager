import 'package:flutter/material.dart';
import 'package:task_manager/screens/calendar.dart';

class HomeScreenTaskStatusTile extends StatelessWidget {
  const HomeScreenTaskStatusTile({
    required this.taskNumber,
    required this.status,
    required this.height,
    Key? key,
  }) : super(key: key);
  final int taskNumber;
  final double height;
  final String status;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, TaskCalendar.id);
        },
        child: Container(
          height: height,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            color: const Color(0xFF5451D6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  taskNumber.toString(),
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: "Poppins",
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  status,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontFamily: "Poppins",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
