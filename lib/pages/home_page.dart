import 'package:flutter/material.dart';
import 'package:todolist/components/my_diaglog.dart';
import 'package:todolist/components/todo_item.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // List of items
  List todo = [
    ["Swimming practise", false],
    ["violin practise", false],
    ["check out the gaming convention", false]
  ];


  void changeCheckState(bool? value, int index){
    setState(() {
      todo[index][1] = !todo[index][1];
    });
  }

  void showAlertDiaglog(){
    showDialog(
        context: context, builder: (contex){
          return MyDialog();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("T O D O")),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: todo.length,
          itemBuilder: ((context, index) {
            return TodoItem(
                isChecked: todo[index][1],
                onChanged:(value) => changeCheckState(value, index),
                todoText: todo[index][0]
            );
      })),

      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDiaglog,
        child: Icon(Icons.add),
      ),
    );
  }
}
