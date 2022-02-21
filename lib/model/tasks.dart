class Tasks {
  Tasks({
    required this.taskName,
    required this.startTime,
    required this.endTime,
    required this.repeat,
    required this.participatingIndividual1,
    this.participatingIndividual2,
    this.participatingIndividual3,
    this.participatingIndividual4,
    this.participatingIndividual5,
  });

  late String? participatingIndividual2,
      participatingIndividual3,
      participatingIndividual4,
      participatingIndividual5;

  late String taskName, participatingIndividual1;
  late bool repeat;
  late DateTime startTime, endTime;
}
//
// enum TaskDays {
//   monday,
//   tuesday,
//   wednesday,
//   thursday,
//   friday,
//   saturday,
//   sunday,
// }
// enum TaskMonths {
//   january,
//   february,
//   march,
//   april,
//   may,
//   june,
//   july,
//   august,
//   september,
//   october,
//   november,
//   december,
// }
