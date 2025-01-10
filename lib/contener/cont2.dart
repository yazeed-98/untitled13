import 'package:flutter/material.dart';


class Cont2 extends StatelessWidget {
  String  value;
  Cont2( {required this.value} );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 39,
      width: 40,
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(10),
         color: Colors.brown,
        image: DecorationImage(image: AssetImage(value))
      ),
    );
  }
}
