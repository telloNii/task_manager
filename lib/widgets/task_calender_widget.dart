import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:task_manager/widgets/current_task_tile.dart';

class TaskCalendarTaskWidget extends StatelessWidget {
  TaskCalendarTaskWidget({
    required this.taskTitle,
    required this.endTime,
    required this.startTime,
    this.firstPersonName,
    this.secondPersonName,
    this.morePersonNames,
    Key? key,
  }) : super(key: key);
  late String taskTitle, startTime, endTime;
  final String? firstPersonName, secondPersonName, morePersonNames;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [Text(startTime), const Gap(50), Text(endTime)],
        ),
        const Gap(20),
        Expanded(
          child: CurrentTaskCard(
            taskTitle: taskTitle,
            isHomeScreen: false,
            firstPersonName: firstPersonName,
            secondPersonName: secondPersonName,
            morePersonNames: morePersonNames,
          ),
        )
      ],
    );
  }
}
