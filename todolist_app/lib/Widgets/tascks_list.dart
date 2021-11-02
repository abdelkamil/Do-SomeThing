import 'package:flutter/material.dart';
import 'exposrt_Widget.dart';
import '../models/export_models.dart';
import 'package:provider/provider.dart';

class ListViewTascks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (context, taskprovider, child) {
      return ListView.builder(
          itemCount: taskprovider.countList,
          itemBuilder: (context, index) {
            final Task t = taskprovider.tasks[index];
            return Card(
              elevation: 5,
              child: NewTasck(t.name, t.isDone, (check) {
                taskprovider.updateTask(t);
              }, () {
                taskprovider.deletTask(t);
              }),
            );
          });
    });
  }
}
