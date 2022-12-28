import 'package:flutter/material.dart';
import 'package:my_ideas_app/alert_box.dart';
import 'package:my_ideas_app/tile.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final _controller = TextEditingController();

  void createNewTodo() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertBox(
          controller: _controller,
          onCancel: () => Navigator.of(context).pop(),
          onSave: () {
            if (_controller.text != "") {
              setState(() {
                toDo.add([_controller.text, false]);
                _controller.clear();
              });
              Navigator.of(context).pop();
            }
          },
        );
      },
    );
  }

  List toDo = [];

  void onChanged(int index) {
    setState(() {
      toDo[index][1] = !toDo[index][1];
      toDo.sort((a, b) {
        if (b[1]) {
          return -1;
        }
        return 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: toDo.length,
        itemBuilder: (BuildContext context, int index) {
          return Tile(
              taskCompleated: toDo[index][1],
              title: toDo[index][0],
              onChanged: (value) => onChanged(index));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: createNewTodo,
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.add),
      ),
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        elevation: 15,
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Your ideas"),
      ),
    );
  }
}
