import 'package:flutter/material.dart';

class TButton extends StatelessWidget {
  final String text;
  final Function function;
  const TButton({
    Key? key,
    required this.text,
    required this.function
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      function;
    }, child: Text(text));
  }
}
