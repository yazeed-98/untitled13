import 'package:flutter/material.dart';
import 'package:untitled13/contener/namee.dart';
import 'package:untitled13/contener/padding.dart';
import 'contener/contener2.dart';





class List2 extends StatelessWidget {

  List <String> post = [
    'assets/image/m.jpg'
    ,
    'assets/image/mm.jpg'
    ,
    'assets/image/mmm.jpg'
    ,
    'assets/image/mmmm.jpg'

    ,
    'assets/image/mmmmm.jpeg'
    ,

  ];


  List<String> imageUrls = [

    'assets/image/yazeedd.jpg',
    'assets/image/yazeeddd.jpg',
    'assets/image/yazeedddd.jpg',
    'assets/image/yazeeddddd.jpg',
    'assets/image/yazeedddddd.jpg',

  ];

  List <String> name =[
    'yazzed bdour',
    'ahmad',
    'mohmad',
    'khaled',
    'siaf',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white30,
body: Column(

  children: [
  Expanded(

      child:ListView.builder(
        scrollDirection: Axis.horizontal,
itemCount: imageUrls.length,

        itemBuilder:
      (context, index) {
        return Storybox(contect: imageUrls[index],);

      },)



  ),
Expanded(
flex: 4,
    child:

        ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: post.length,
            itemBuilder:
        (context, index) {
          return  Contener2 (choice:
          post[index],);
        },),








    ),


]

));
  }
}