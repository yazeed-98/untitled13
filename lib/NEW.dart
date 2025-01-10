import 'package:flutter/material.dart';


class New extends StatefulWidget {


  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  List <String> irbid=['login','sign in','rejster'];
  Color D=Colors.black54;
  String? selctValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('irdid',
        style: TextStyle(
          color: Colors.white


        ),
        ),
        backgroundColor: D,
        actions: [
          PopupMenuButton(
            icon: Icon(Icons.menu),
            style: ButtonStyle(

            ),
            itemBuilder:
            (context) {
              return irbid.map((choice) {
                return PopupMenuItem(child: Text(choice),
                  value: choice,
                );
              }).toList();
              onSelected:
                  (v) {
                setState(() {
                  selctValue=v;

                });
              };
            }
          )
        ],
      ),



    );
  }
}
