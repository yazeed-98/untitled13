
import 'package:flutter/material.dart';



class MyApp1 extends StatefulWidget {

  @override
  State<MyApp1> createState() => MyApp2();
}

class MyApp2 extends State<MyApp1> {
  String? selectedValue;
  String? selectedcalar;
  List <String> option = ['op1','op2','op3'];
  List <String>calar =
  ['red','orange','yellow'];
  Color c =Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,

        body: Column(
            children: [


              SafeArea(
                  child: Container(
                    margin: EdgeInsets.only(top: 70),
                    width: 200,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue
                    ),
                    child:
                    DropdownButton(
                      hint: Text('CHOICE'),
                      items: calar.map((calars) {
                        return DropdownMenuItem(child: Text(calars),
                            value: calars
                        );
                      }
                      ).toList(),
                      value: selectedcalar,
                      onChanged: (v) {
                        setState(() {
                          selectedcalar = v;
                          switch (selectedcalar) {
                            case 'red':
                              c = Colors.red;
                              break;
                            case 'orange':
                              c = Colors.deepOrange;
                              break;
                            case 'yellow':
                              c = Colors.yellowAccent;
                              break;
                          }
                        });
                      }
                      ,
                    ),
                  )
              )
            ])

    );
  }}