import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';
import 'package:todo_app/pages/list_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, TaskData, Widget? child) {
        return ListView.builder(
          itemCount: TaskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              ischecked: TaskData.tasks[index].isdone,
              tasktitle: TaskData.tasks[index].name,
              cheakboxchanged: (bool? newvalue) {
                TaskData.updateTask(TaskData.tasks[index]);
              },
              listtiledelete: () {
                TaskData.deleteTask(TaskData.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
