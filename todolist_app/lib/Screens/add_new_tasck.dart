import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/models/task_provider.dart';

class AddNewTasck extends StatelessWidget {
  final TextEditingController newtasktitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Add New Task",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlueAccent),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              autofocus: true,
              controller: newtasktitle,
              textAlign: TextAlign.center,
            ),
            Consumer<TaskProvider>(builder: (context, taskprovider, child) {
              return ElevatedButton(
                  onPressed: () {
                    print(" show task : " + newtasktitle.text);
                    taskprovider.addNewTask(newtasktitle.text);
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Add",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ));
            })
          ],
        ),
      ),
    );
  }
}
