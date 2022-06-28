import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonOutlin extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback function;
  final double width;
  final double height;
  final IconData icon;
  const ButtonOutlin({
    Key? key,
    required this.text,
    this.color=Colors.teal,
    this.width=double.infinity,
    this.height=52,
    required this.function,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: OutlinedButton(
          style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.purple)
          ),
          onPressed: (){},
          child: Container(
            height: 52,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(icon),
                SizedBox(width: 5,),
                Text('Sign in with Google',style: TextStyle(color: Colors.purple),),
              ],
            ),
          )
      )
    );
  }
}
