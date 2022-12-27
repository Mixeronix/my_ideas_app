import 'package:flutter/material.dart';
import 'package:my_ideas_app/tile.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void createNewTodo() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog();
      },
    );
  }

  List Todo = [
    ["aaa", false],
    ["bbb", true],
    ["ccc", true],
  ];

  void onChanged(int index) {
    setState(() {
      Todo[index][1] = !Todo[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: Todo.length,
        itemBuilder: (BuildContext context, int index) {
          return Tile(
              taskCompleated: Todo[index][1],
              title: Todo[index][0],
              onChanged: (value) => onChanged(index));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTodo,
        backgroundColor: Colors.grey[900],
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Colors.grey[900],
        title: const Text("Your ideas"),
      ),
    );
  }
}
