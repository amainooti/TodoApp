import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget {
   TodoItem({Key? key,
     required this.isChecked,
     required this.onChanged,
     required this.todoText
   }) : super(key: key);

  // params
  bool isChecked;
  Function(bool?)? onChanged;
  String todoText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top:24, left: 12, right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.yellow,

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
    );
  }
}
