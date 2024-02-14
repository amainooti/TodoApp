import 'package:flutter/material.dart';
import 'package:todolist/components/custom_button.dart';

class MyDialog extends StatelessWidget {
  final dynamic controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  MyDialog({Key? key,
    required this.controller,
    required this.onCancel,
    required this.onSave
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        backgroundColor: Theme.of(context).primaryColor,
        content: TextField(
          cursorColor: Colors.black,
          controller: controller,
          decoration: InputDecoration(
            hintText: "Add a new task",
            focusColor: Colors.black,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black)
            ),
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomButton(onPressed: onCancel, buttonName: "cancel"),
             const SizedBox(width: 20,),
              CustomButton(onPressed: onSave, buttonName: "Save"),
            ],
          )
        ],
      );
  }
}
