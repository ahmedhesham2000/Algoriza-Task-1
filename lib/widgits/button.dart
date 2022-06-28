import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback function;
  final double width;
  final double height;
  const Button({
    Key? key,
    required this.text,
    this.color=Colors.teal,
    this.width=double.infinity,
    this.height=52,
    required this.function
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
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
