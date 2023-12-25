import 'package:flutter/material.dart';

import 'model/task.dart';

typedef TaskWidgetBuilder<T extends Task> = Widget Function(T task);

class TaskWidget<T extends Task> extends StatelessWidget {
  final T task;
  final VoidCallback? onTap;
  final TaskWidgetBuilder? builder;

  const TaskWidget({Key? key, required this.task, this.onTap, this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var radius = BorderRadius.circular(4);
    return builder == null
        ? Card(
            elevation: 0.4,
            child: InkWell(
              borderRadius: radius,
              onTap: onTap,
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(task.title ?? "")
                    ]),
                padding: const EdgeInsets.all(16),
              ),
            ),
            shape: RoundedRectangleBorder(borderRadius: radius),
          )
        : builder!(task);
  }
}
