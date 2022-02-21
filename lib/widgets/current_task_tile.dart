import 'package:flutter/material.dart';
import 'package:task_manager/screens/calendar.dart';

class CurrentTaskCard extends StatelessWidget {
  const CurrentTaskCard({
    required this.taskTitle,
    required this.isHomeScreen,
    this.firstPersonName,
    this.secondPersonName,
    this.morePersonNames,
    Key? key,
  }) : super(key: key);
  final String? taskTitle, firstPersonName, secondPersonName, morePersonNames;
  final bool isHomeScreen;
  String displayNames() {
    if (firstPersonName != null && secondPersonName == null) {
      return firstPersonName!;
    } else if (firstPersonName != null && secondPersonName != null) {
      return (firstPersonName! + " and " + secondPersonName!);
    } else if (firstPersonName != null &&
        secondPersonName != null &&
        morePersonNames != null) {
      return (firstPersonName! + ", " + secondPersonName! + ", ........");
    } else {
      return "You're going solo on this one";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Container(
        height: isHomeScreen ? 150.0 : 120.0,
        decoration: BoxDecoration(
          color: const Color(0xFF5451D6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                taskTitle!,
                style: TextStyle(
                  fontSize: isHomeScreen ? 18.0 : 15.0,
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                displayNames(),
                style: TextStyle(
                  fontSize: isHomeScreen ? 16.0 : 12.0,
                  color: Colors.white70,
                  fontFamily: "Poppins",
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        CircleAvatar(
                          radius: isHomeScreen ? 20 : 15,
                          backgroundImage:
                              const AssetImage("assets/images/75843984.jpeg"),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 24.0),
                        //   child: CircleAvatar(
                        //     radius: isHomeScreen ? 20 : 15,
                        //     backgroundImage:
                        //         const AssetImage("assets/images/75843984.jpeg"),
                        //   ),
                        // ),
                      ],
                    ),
                    Text(
                      "Now",
                      style: TextStyle(
                        fontSize: isHomeScreen ? 16.0 : 15.0,
                        color: Colors.white70,
                        fontFamily: "Poppins",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
