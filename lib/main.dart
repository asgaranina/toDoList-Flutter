import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: ToDoList(title: 'To Do List'),
    );
  }
}

class ToDoList extends StatefulWidget {
  ToDoList({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _ToDoListState createState() => _ToDoListState();
}

// добавление пунктов списком с разделителем
// иконка в конце строки у текста (как сердечки)
// вычеркивание сделанного
// добавить второй экран
// добавить навбар
// на второй экран переносить сделанное
// сделать кнопку очистки на первом и втором экране независимые

class _ToDoListState extends State<ToDoList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
        children: [
          ListView(
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Need to be done",
              hintStyle: TextStyle(
                fontSize: 20,
              ),
              contentPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
