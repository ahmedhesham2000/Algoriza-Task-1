import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback function;
  const Button({
    Key? key,
    required this.text,
    this.color=Colors.teal,
    required this.function
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          onPressed:function,
          child:Text(text),
        style: ButtonStyle(

          backgroundColor: MaterialStateProperty.all(color)
        ),
      ),
    );
  }
}
