import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoItem extends StatelessWidget {
   TodoItem({Key? key,
     required this.isChecked,
     required this.onChanged,
     required this.todoText,
     required this.deleteTask,
     required this.updateTask
   }) : super(key: key);

  // params
  bool isChecked;
  Function(bool?)? onChanged;
  String todoText;
  Function(BuildContext)? deleteTask;
  Function(BuildContext)? updateTask;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(onPressed: deleteTask,
              icon: Icons.delete,
              backgroundColor: Colors.red,
            ),
            SlidableAction(
                onPressed: updateTask,
                icon: Icons.edit,
                backgroundColor: Colors.blue.shade200
            ),

          ],
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top:24, left: 12, right: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Theme.of(context).primaryColor,


          ),
          child: Row(
            children: [
              Checkbox(
                  value: isChecked,
                  onChanged: onChanged,
                activeColor: Colors.black,
              ),
              Text(todoText,
                style: TextStyle(
                      decoration: isChecked
                      ? TextDecoration.lineThrough
                      : TextDecoration.none
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
