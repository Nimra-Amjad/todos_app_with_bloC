import 'package:flutter/material.dart';
import 'package:testtest/models/todos_model.dart';

class AddToDoScreen extends StatelessWidget {
  const AddToDoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controllerId = TextEditingController();
    TextEditingController controllerTask = TextEditingController();
    TextEditingController controllerDescription = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('BloC Pattern: Add a To Do'),
      ),
      body: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              _inputField('ID', controllerId),
              _inputField('Task', controllerTask),
              _inputField('Description', controllerDescription),
              ElevatedButton(
                  onPressed: () {
                    var todo = Todo(
                        id: controllerId.value.text,
                        task: controllerTask.value.text,
                        description: controllerDescription.value.text);
                  },
                  child: Text('Add To Do'))
            ],
          ),
        ),
      ),
    );
  }

  Column _inputField(
    String field,
    TextEditingController controller,
  ) {
    return Column(
      children: [
        Text(
          '$field',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(bottom: 10),
          width: double.infinity,
          child: TextFormField(
            controller: controller,
          ),
        )
      ],
    );
  }
}
