import 'package:flutter/material.dart';
import 'cgpainput.dart';
import 'calculator_page.dart';
import 'sem1.dart';
import 'sem2.dart';
import 'sem3.dart';
import 'sem4.dart';
import 'sem5.dart';
import 'sem6.dart';
import 'sem7.dart';
import 'sem8.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: Calculator.id,
      routes: {
        Calculator.id: (context) => Calculator(),
        Sem1.id: (context) => Sem1(),
        Sem2.id: (context) => Sem2(),
        Sem3.id: (context) => Sem3(),
        Sem4.id: (context) => Sem4(),
        Sem5.id: (context) => Sem5(),
        Sem6.id: (context) => Sem6(),
        Sem7.id: (context) => Sem7(),
        Sem8.id: (context) => Sem8(),
        CGPACALC.id: (context) => CGPACALC(),
      },
    );
  }
}
