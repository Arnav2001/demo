import 'package:demo/util/colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String nameOfButton;
  final Function onPressed;
  const Button({super.key, required this.nameOfButton,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => onPressed(),
        child: Text(nameOfButton,style: const TextStyle(
           color: darkChocolate,
          fontWeight: FontWeight.bold
        ),));
  }
}
