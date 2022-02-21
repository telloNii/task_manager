import 'package:flutter/material.dart';
import 'package:task_manager/widgets/task_calender_widget.dart';

List<Widget> taskCalendarScreenList = [
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: const [Icon(Icons.arrow_back), Text("Jan")],
      ),
      const Text(
        "February",
        style:
            TextStyle(fontFamily: "Poppins", fontSize: 26, fontWeight: FontWeight.w700),
      ),
      Row(
        children: const [
          Text("Mar"),
          Icon(Icons.arrow_forward_rounded),
        ],
      ),
    ],
  ),
  SizedBox(
    height: 120,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 65,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              color: const Color(0xFF5451D6),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "21",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Mon",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 65,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("22"),
                Text("Tue"),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 65,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("23"),
                Text("Wed"),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 65,
            decoration: BoxDecoration(
              // shape: BoxShape.circle,
              color: const Color(0xFFFFFFFF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("24"),
                Text("Thu"),
              ],
            ),
          ),
        ),
      ],
    ),
  ),
  const Text(
    "Ongoing",
    style: TextStyle(
      fontFamily: "Poppins",
      fontWeight: FontWeight.w700,
      fontSize: 24,
    ),
  ),
  TaskCalendarTaskWidget(
    taskTitle: "Project SIAD",
    startTime: "9 AM",
    endTime: "12 PM",
  ),
  TaskCalendarTaskWidget(
    taskTitle: "Mobile App Development",
    startTime: "12 PM",
    endTime: "1 PM",
  ),
  TaskCalendarTaskWidget(
    taskTitle: "Web App Development",
    startTime: "2 PM",
    endTime: "3 PM",
  ),
  TaskCalendarTaskWidget(
    taskTitle: "Study Time",
    startTime: "3 PM",
    endTime: "4 PM",
  ),
  TaskCalendarTaskWidget(
    taskTitle: "Date with Doreen",
    startTime: "4 PM",
    endTime: "6 PM",
  ),
  TaskCalendarTaskWidget(
    taskTitle: "Date with Little Jackie",
    startTime: "6 PM",
    endTime: "10 PM",
  ),
  TaskCalendarTaskWidget(
    taskTitle: "Project SIAD",
    startTime: "10 PM",
    endTime: "1 AM",
  ),
];
