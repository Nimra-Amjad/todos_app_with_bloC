import 'package:flutter/material.dart';

import '../models/todos_model.dart';
import 'add_todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Pattern: To Do\n's"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddToDoScreen()));
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Pending To Do\n's",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Todo.todos.length,
                itemBuilder: (BuildContext context, int index) {
                  return _todoCard(Todo.todos[index]);
                })
          ],
        ),
      ),
    );
  }

  Card _todoCard(Todo todo) {
    return Card(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '#${todo.id}: ${todo.task}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.add_task)),
                IconButton(onPressed: () {}, icon: Icon(Icons.cancel)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
