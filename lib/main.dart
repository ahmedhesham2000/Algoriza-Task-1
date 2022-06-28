import 'package:flutter/material.dart';
import 'package:task_1/Screens/login.dart';
import 'package:task_1/Screens/onBoard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        OnBoard.routName:(BuildContext)=>OnBoard(),
        Login.routName:(BuildContext)=>Login(),
      },
      initialRoute: OnBoard.routName,
    );
  }
}
