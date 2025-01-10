import 'package:flutter/material.dart';






class Projict22 extends StatefulWidget {



  @override
  State<Projict22> createState() => _Projict22State();
}

class _Projict22State extends State<Projict22> {
  List<String> items = ['red', 'blue', 'green'];
  String? selectedItems;
  Color C =Colors.white;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Face Book',
        style: TextStyle(
          color: Colors.white,
           fontSize: 30
        ),),
        backgroundColor: C,
        actions: [
          PopupMenuButton(
            position:PopupMenuPosition.over,
            icon: Icon(Icons.menu),

            itemBuilder:


            (context) {
            return items.map((calar){

              return PopupMenuItem(child: Text(calar),
              value: calar,

              );


            }

            ).toList();




            },
          onSelected: (choice){
            setState(() {

            });
            selectedItems=choice;
            switch (selectedItems){
              case 'red':
                C= Colors.red;
              break;
              case 'green':
              C=Colors.green;
              case 'blue':
                C=Colors.blue;



            }

          },
          )


          ],

      ),
    );
  }
}
