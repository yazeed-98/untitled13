import 'package:flutter/material.dart';


class Contener2 extends StatelessWidget {

String  choice;
Contener2({required this.choice});

  @override
  Widget build(BuildContext context) {
    return
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15,left: 8,right: 8,bottom: 8),
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(image:AssetImage(choice)),
                  color:  Colors.blueGrey,

                ),




              ),

            ),


        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Icon(Icons.share),

            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: Icon(Icons.comment),
            ),

            Icon(Icons.favorite_border,),


          ],

        )
      ],
    );


  }
}
