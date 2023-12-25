import 'dart:math';

import 'package:flutter/cupertino.dart';

colors() => List.generate(
    10,
    (index) => Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
        Random().nextInt(255)));
texts() => [
      "System Frameworks",
      "Patterns",
      "Third-party Libraries",
      "Community",
      "Tools",
      "Commons",
      "A",
      "AB",
      "ABC",
      "ABCD",
    ]
      ..shuffle()
      ..shuffle();

class Task {
  String? title;
  int? id;
  int deadline =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
          .add(const Duration(days: 1))
          .millisecondsSinceEpoch;
  int createAt = DateTime.now().millisecondsSinceEpoch;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Task && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}

class Label {
  final String name;
  final Color color;

  Label({required this.name, required this.color});
}
