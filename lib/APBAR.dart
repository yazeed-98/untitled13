import 'package:flutter/material.dart';


class Apbar1 extends StatefulWidget {
  const Apbar1({super.key});

  @override
  State<Apbar1> createState() => _Apbar1State();
}

class _Apbar1State extends State<Apbar1> {
  List<String> items = ['red', 'blue', 'green'];
  String? selectedValue;
  Color C =Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: C,
        title: Text('popup ',
        ),
        actions: [
          PopupMenuButton(
          itemBuilder: (context)
          {return items.map((calar){
            return PopupMenuItem(child: Text(calar),
              value: calar,
            );

          }).toList();

          },
            onSelected: (v){
            setState(() {

            });
            selectedValue=v;
            switch (selectedValue) {
              case 'red':
                C= Colors.red;
                break;
              case 'blue':
              C= Colors.lightBlue;
                break;
              case 'green':
                C = Colors.lightGreen;
                break;
            }
            }
            )


  ]
      )




    );
  }
}
