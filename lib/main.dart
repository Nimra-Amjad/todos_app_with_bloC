import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtest/blocs/todos/todos_bloc.dart';
import 'package:testtest/screens/home_screen.dart';

import 'models/todos_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => TodosBloc()
              ..add(LoadTodos(todos: [
                Todo(
                    id: '1',
                    task: 'Eating',
                    description: 'Eat biryani today! Yippieeee'),
                Todo(
                    id: '2',
                    task: 'Sleeping',
                    description: "Take na of 10 hours! Yahoooo"),
                Todo(
                    id: '3',
                    task: 'Eat your 2nd meal',
                    description: 'Eat nehari! Yummmmmm')
              ])))
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
