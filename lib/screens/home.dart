import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_flutter/constants/color.dart';
import 'package:todo_flutter/constants/task_type.dart';
import 'package:todo_flutter/header_item.dart';
import 'package:todo_flutter/screens/add_new_tasks.dart';
import 'package:todo_flutter/todo_item.dart';

import '../model/task.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //List<String> todo = ["Lessons Today", "Flutter tasks", "Marketing"];
  //List<String> completedTask = ["Game meetUp", "Certificated", "Read a book"];

  List<Task> todo = [
    Task(
        type: TaskType.note,
        title: "Lessons Today",
        description: "Lesson description",
        isCompleted: false),
    Task(
        type: TaskType.calendar,
        title: "Flutter tasks deadline",
        description: "Flutter tasks description",
        isCompleted: false),
    Task(
        type: TaskType.contest,
        title: "Marketing meeting",
        description: "Marketing description",
        isCompleted: false),
  ];

  void addNewTask(Task newTask) {
    setState(() {
      todo.add(newTask);
    });
  }

  List<Task> complited = [
    Task(
        type: TaskType.note,
        title: "Lessons Today 01.02.2024",
        description: "Lesson description",
        isCompleted: false),
    Task(
        type: TaskType.calendar,
        title: "Flutter tasks deadline-01.02.2024",
        description: "Flutter tasks description",
        isCompleted: false),
  ];
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: HexColor(bgColor),
          body: Column(
            children: [
              //Header
              HeaderItem(width: deviceWidth, height: deviceHeight),
              // Top Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                    child: ListView.builder(
                        shrinkWrap: true,
                        primary: false,
                        // ListView.builder(
                        // shrinkWrap: true,
                        // primary: false,
                        itemCount: todo.length,
                        itemBuilder: (context, index) {
                          return TodoItem(
                            task: todo[index],
                          );
                        }),
                  ),
                ),
              ),
              //Completed Text
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Completed",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              //Bottom Column
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: SingleChildScrollView(
                      child: ListView.builder(
                          shrinkWrap: true,
                          primary: false,
                          itemCount: complited.length,
                          itemBuilder: (context, index) {
                            return TodoItem(task: complited[index]);
                          })),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AddNewTasksScreen(
                          addNewTask: (newTask) => addNewTask(newTask),
                        ),
                      ),
                    );
                  },
                  child: const Text("Add New Task"))
            ],
          ),
        ),
      ),
    );
  }
}
