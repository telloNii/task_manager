import 'package:flutter/material.dart';
import 'package:task_manager/screens/calendar.dart';
import 'package:task_manager/widgets/appBars.dart';
import 'package:task_manager/widgets/home_screen_comp.dart';

List<Widget> screenData = const [
  HomeScreenComposition(),
  TaskCalendar(),
  HomeScreenComposition(),
  HomeScreenComposition(),
];
List<PreferredSizeWidget> appBars = [
  homeScreenAppBar(),
  tasksCalendarAppBar(),
  homeScreenAppBar(),
  homeScreenAppBar(),
];

List<Color> scaffoldBackgroundColor = const [
  Color(0xFF4B37BA),
  Color(0xFFDBE9F6),
  Color(0xFF4B37BA),
  Color(0xFF4B37BA),
];
