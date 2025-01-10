import 'package:flutter/material.dart';


class Storybox extends StatelessWidget {

  String contect;
  Storybox({required this.contect});
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red,
          image: DecorationImage(image:AssetImage(contect)
        ),

       
          ),
      ));

    
  }
}
