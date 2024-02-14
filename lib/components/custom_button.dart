import 'package:flutter/material.dart';


class CustomButton extends StatelessWidget {
  CustomButton({Key? key,
    required this.onPressed,
    required this.buttonName}) : super(key: key);

  void Function()? onPressed;
  String buttonName;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(5),
      ),
      color: Theme.of(context).primaryColor,
        onPressed: onPressed,
        child: Text(buttonName),

    );
  }
}
