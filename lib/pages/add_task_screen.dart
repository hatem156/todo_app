import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addtaskcallback;
  AddTaskScreen(this.addtaskcallback);

  @override
  Widget build(BuildContext context) {
    String? newtitle;
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            "Add Task",
            style: TextStyle(
                fontSize: 30,
                color: Colors.indigo[400],
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newtitle = value;
            },
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context,listen: false).addTask(newtitle!);
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(
                backgroundColor: Colors.teal[400], primary: Colors.white),
            child: const Text("Add"),
          ),
        ],
      ),
    );
  }
}
