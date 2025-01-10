import 'package:flutter/material.dart';
import 'package:untitled13/contener/cont2.dart';


class Box1 extends StatelessWidget {
  List <String> post = [
    'assets/image/m.jpg',
    'assets/image/mm.jpg',
    'assets/image/mmm.jpg',
    'assets/image/mmmm.jpg',
    'assets/image/mmmmm.jpg',

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: post.length,

      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
     crossAxisSpacing: 10,
        mainAxisSpacing: 20

      ),
      itemBuilder:  (context, index) {
      return Cont2(value: post[index]);
    },);
  }
}
