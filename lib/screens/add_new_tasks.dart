import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:todo_flutter/constants/color.dart';

class AddNewTasksScreen extends StatelessWidget {
  const AddNewTasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      backgroundColor: HexColor(bgColor),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: deviceWidth,
              height: deviceHeight / 10,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image:
                        AssetImage("lib/assets/images/add_new_task_header.png"),
                    fit: BoxFit.cover),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.close,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      "Add New Tasks",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Task Title"),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text("Category"),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Category selected"),
                        ),
                      );
                    },
                    child: Image.asset("lib/assets/images/category_1.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Category selected"),
                        ),
                      );
                    },
                    child: Image.asset("lib/assets/images/category_2.png"),
                  ),
                  GestureDetector(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: Duration(milliseconds: 300),
                          content: Text("Category selected"),
                        ),
                      );
                    },
                    child: Image.asset("lib/assets/images/category_3.png"),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("Date"),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true, fillColor: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Time"),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true, fillColor: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10.0),
              child: Text("Notes"),
            ),
            const SizedBox(
              height: 300,
              child: TextField(
                expands: true,
                maxLines: null,
                decoration: InputDecoration(
                    filled: true, fillColor: Colors.white, isDense: true),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Save"),
            ),
          ],
        ),
      ),
    ));
  }
}
