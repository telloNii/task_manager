import 'package:flutter/material.dart';

import '../model/task_calendar_screen_list.dart';

class TaskCalendar extends StatefulWidget {
  const TaskCalendar({Key? key}) : super(key: key);
  static const String id = "task calender route";

  @override
  _TaskCalendarState createState() => _TaskCalendarState();
}

class _TaskCalendarState extends State<TaskCalendar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
      child: ListView.builder(
        itemCount: taskCalendarScreenList.length,
        itemBuilder: (BuildContext context, int index) {
          return taskCalendarScreenList[index];
        },
      ),
    );
  }
}
