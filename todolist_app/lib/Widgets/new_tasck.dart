import 'package:flutter/material.dart';

class NewTasck extends StatelessWidget {
  final bool ischecked;
  final String name;
  final Function checkbox;
  final Function deleteTask;
  NewTasck(this.name, this.ischecked, this.checkbox, this.deleteTask);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: () {
          print("On Long Press");
          deleteTask();
        },
        title: Text(
          name,
          style: TextStyle(
              decoration: ischecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: ischecked,
          onChanged: (valuecheck) {
            checkbox(valuecheck);
          },
        ));
  }
}
