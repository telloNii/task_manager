import 'package:flutter/material.dart';
import 'package:task_manager/screens/calendar.dart';

class CurrentTaskCard extends StatelessWidget {
  const CurrentTaskCard({
    required this.taskTitle,
    this.firstPersonName,
    this.secondPersonName,
    this.morePersonNames,
    Key? key,
  }) : super(key: key);
  final String? taskTitle, firstPersonName, secondPersonName, morePersonNames;
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
        height: 150.0,
        decoration: BoxDecoration(
          color: const Color(0xFF5451D6),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Mobile App Design",
                style: TextStyle(
                  fontSize: 18.0,
                  fontFamily: "Poppins",
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                displayNames(),
                style: const TextStyle(
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
                      children: const [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/75843984.jpeg"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.0),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("assets/images/75843984.jpeg"),
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      "Now",
                      style: TextStyle(
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
