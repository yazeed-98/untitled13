import 'package:flutter/material.dart';

main ( )
{
  runApp(MyApp());

}



class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double w =MediaQuery.of(context).size.width;
    double h =MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,



      home: Scaffold(

        backgroundColor: Colors.blue,
        body: Column(

          children: [
            SafeArea(

              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                        ),

                        child:
                Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text('FaceBook',
                      style: TextStyle(color: Colors.lightBlue,
                        fontSize: 30
                      ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150),
                      child: TextButton.icon(onPressed: (){}, label:Icon(Icons.menu),
                      ),
                    ) ],
                ),

              ),

            ),

SizedBox(height: 29,),
Container(
  width: double.infinity,

  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

  SizedBox(height: 40,),
  ElevatedButton(onPressed: (){}, child: Text('user name',
  style: TextStyle(
    color: Colors.black,
    fontSize: 20
  ),),
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.white,
    shape:ContinuousRectangleBorder(borderRadius: BorderRadius.horizontal(left:Radius.circular(30)))


  ),),

      Container(

        margin: EdgeInsets.only(left: 20),
        width: w/1.3,
        height: h/12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),

      ),
      SizedBox(height: 40,),
      Container(
        margin: EdgeInsets.only(left: 28),

        child: Text('PASWORD',
          style: TextStyle(
              fontSize: 20
          ),),
      ),


      Container(
        margin: EdgeInsets.only(left: 20),
        width: w/1.3,
        height: h/12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,

        ),


      ),




    ],
  ),
),


            SizedBox(height: 30,),
            TextButton(onPressed: (){}, child: Text('SIGN UP',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white
              ),))
          ],


        ),
floatingActionButton:FloatingActionButton(onPressed: (){},child: Icon(Icons.add,
size: 40,),
    backgroundColor: Colors.yellowAccent,)

      ),



    );
  }
}
