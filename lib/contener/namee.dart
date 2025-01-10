import 'package:flutter/material.dart';



class Namee extends StatelessWidget {
  String items;
  Namee ({required this .items});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: 50,
        height: 50,
      child: Text(items,
      style: TextStyle(
        fontSize: 30,
      ),),

      ),


    );
  }
}
