import 'package:flutter/material.dart';

class MyDialog extends StatelessWidget {
  MyDialog({Key? key}) : super(key: key);

  TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AlertDialog(
        content: TextField(
          controller: myController,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: (){}, child: Text("cancel")),
             const SizedBox(width: 20,),
              ElevatedButton(onPressed: (){}, child: Text("Save")),

            ],
          )

        ],
      ),
    );
  }
}
