import 'package:flutter/material.dart';

class Fstate extends ChangeNotifier {
  static List taskDataList = [];
  addToDo(TasksData newValue) {
    taskDataList.add(newValue);
    notifyListeners();
  }
}

class TasksData {
  TasksData({required this.notes, required this.taskname});
  final String notes, taskname;
}

class Task extends StatelessWidget {
  const Task({
    required this.notes,
    required this.number,
    required this.taskname,
    required this.onDelete,
    required this.onEdit,
    super.key,
  });
  final String taskname, notes;
  final int number;
  final Function()? onDelete, onEdit;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox(),
        ),
        Flexible(flex: 2, child: Text(number.toString())),
        const Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: SizedBox(),
        ),
        Flexible(
            flex: 30,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        taskname,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.sizeOf(context).height / 30)),
                      Text("$notes notes"),
                      Padding(
                          padding: EdgeInsets.only(
                              top: MediaQuery.sizeOf(context).height / 90)),
                      const Divider()
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        alignment: Alignment.bottomLeft,
                        hoverColor: Colors.transparent,
                        onPressed: onDelete,
                        icon: const Icon(Icons.remove),
                      ),
                      IconButton(
                        alignment: Alignment.bottomRight,
                        hoverColor: Colors.transparent,
                        onPressed: onEdit,
                        icon: const Icon(Icons.edit),
                      ),
                      const Divider()
                    ],
                  ),
                )
              ],
            )),
      ],
    );
  }
}
