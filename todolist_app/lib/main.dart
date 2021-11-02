import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/models/task_provider.dart';
import 'Screens/export_screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String data = " AppBar Data";
    return ChangeNotifierProvider(
        create: (BuildContext context) => TaskProvider(),
        child: MaterialApp(home: TascksScreen()));
  }
}

class Level1 extends StatelessWidget {
  final String data;
  Level1(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(data),
    );
  }
}

class Level2 extends StatelessWidget {
  final String data;
  Level2(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level3(data),
    );
  }
}

class Level3 extends StatelessWidget {
  final String data;
  Level3(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(data);
  }
}
