import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'cgpainput.dart';
import 'sem1.dart';
import 'sem2.dart';
import 'sem3.dart';
import 'sem4.dart';
import 'sem5.dart';
import 'sem6.dart';
import 'sem7.dart';
import 'sem8.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);
  static String id = 'calculator_page';

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  late String _selectedGrade;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xff2193b0),
              Color(0xff6dd5ed),
            ]
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: null,
          title: Text('Kruzer'),
          backgroundColor: Color(0xff2a8ea7),
        ),
        body: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    AwesomeDropDown(dropDownList: ['ECE']),
                    AwesomeDropDown(
                      dropDownList: [
                        'I',
                        'II',
                        'III',
                        'IV',
                        'V',
                        'VI',
                        'VII',
                        'VIII'
                      ],
                      onDropDownItemClick: (selectedItem) {
                        _selectedGrade = selectedItem;
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                      child: Material(
                        color: Colors.blue,
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(25.0),
                        child: MaterialButton(
                          minWidth: 100,
                          onPressed: () {
                            switch (_selectedGrade) {
                              case "I":
                                {
                                  Navigator.pushNamed(context,Sem1.id);
                                }
                                break;
                              case "II":
                                {
                                  Navigator.pushNamed(context,Sem2.id);
                                }
                                break;
                              case "III":
                                {
                                  Navigator.pushNamed(context,Sem3.id);
                                }
                                break;
                              case "IV":
                                {
                                  Navigator.pushNamed(context,Sem4.id);
                                }
                                break;
                              case "V":
                                {
                                  Navigator.pushNamed(context,Sem5.id);
                                }
                                break;
                              case "VI":
                                {
                                  Navigator.pushNamed(context,Sem6.id);
                                }
                                break;
                              case "VII":
                                {
                                  Navigator.pushNamed(context,Sem7.id);
                                }
                                break;
                              case "VIII":
                                {
                                  Navigator.pushNamed(context,Sem8.id);
                                }
                                break;
                            }
                          },
                          child: Text('CALCULATE',
                          style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      child: Material(
                        color: Colors.orangeAccent,
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(25.0),
                        child: MaterialButton(
                          minWidth: 100,
                          onPressed: () {
                            Navigator.pushNamed(context, CGPACALC.id);
                          },
                          child: Text('CALCULATE CGPA'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
