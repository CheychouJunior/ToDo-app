import "package:flutter/material.dart";
import "package:todo_app/util/todo_tile.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[200],
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Center(child: Text("TO DO")),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskName: "Make tutorial",
            taskCompleted: false,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskName: "Do exercise",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskName: "Learn Maths",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskName: "Go and eat",
            taskCompleted: false,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}
