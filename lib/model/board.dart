import 'package:taskboard/model/task.dart';

class Board<T extends Task> {
  final String name;
  final List<T> _tasks;
  DateTime createDate = DateTime.now();
  late DateTime updateDate;

  List<Task> get tasks => _tasks;

  Board(this.name, this._tasks);

  void newTask(T task) {
    _tasks.add(task);
    _updateDate();
  }

  _updateDate() {
    updateDate = DateTime.now();
  }

  void removeTask(Task task) {
    _tasks.removeWhere((element) => element.id == task.id);
    _updateDate();
  }
}
