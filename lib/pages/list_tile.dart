import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String tasktitle;
  final void Function(bool?) cheakboxchanged;
  final void Function() listtiledelete;
  TaskTile(
      {super.key,
      required this.ischecked,
      required this.tasktitle,
      required this.cheakboxchanged,
      required this.listtiledelete});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        tasktitle,
        style: TextStyle(
          decoration: ischecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: ischecked,
        onChanged: cheakboxchanged,
      ),
      onLongPress: listtiledelete,
    );
  }
}
