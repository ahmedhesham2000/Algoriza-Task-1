import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:task_1/Screens/login.dart';
import 'package:task_1/widgits/button.dart';

class OnBoard extends StatelessWidget{
  static const String routName='onBoard';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
          showDoneButton: true,
          done:  Button(text: 'Get Started', function: (){
            Navigator.pushNamed(context, Login.routName);
          }),
          showNextButton: true,
          next: const Icon(Icons.navigate_next_sharp,color: Colors.teal,),
          onDone: (){},
          pages: [
            PageViewModel(
              title: 'Get food delivery to your doorstep asap',
              body: 'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
              image: Image.asset('assets/images/image1.png'),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                bodyTextStyle: TextStyle(fontSize: 20,color: Colors.black38),
                imagePadding: EdgeInsets.all(24)
              )
            ),
            PageViewModel(
              title: 'Buy any food from your favorite restaurant',
              body: 'We are constantlly adding your favorite restaurant throughout the territory and around your area carefully selected',
              image: Image.asset('assets/images/image2.png'),
              decoration: PageDecoration(
                titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                bodyTextStyle: TextStyle(fontSize: 20,color: Colors.black38),
                imagePadding: EdgeInsets.all(24)
              )
            ),
          ],

        )
    );
  }
}
