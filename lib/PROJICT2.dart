import 'package:flutter/material.dart';

class Drop1 extends StatefulWidget {
  const Drop1({super.key});

  @override
  State<Drop1> createState() => _Drop1State();
}

class _Drop1State extends State<Drop1> {
  List<String> items = ['red', 'blue', 'green']; // قائمة الخيارات
  String? selectedValue; // القيمة المختارة
  Color backgroundColor = Colors.white; // لون الخلفية الافتراضي

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor, // لون الخلفية
      body: Center(
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            prefix: Icon(Icons.add),
                suffix: Icon(Icons.abc),
            filled: true,
            fillColor: Colors.blue,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),

            ),


          ),
          value: selectedValue,
          hint: Text('اختر لوناً'),
          items: items.map((String color) {
            return DropdownMenuItem<String>(
              value: color,
              child: Text(color),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;

              // استخدام Switch لتغيير لون الخلفية
              switch (selectedValue) {
                case 'red':
                  backgroundColor = Colors.red;
                  break;
                case 'blue':
                  backgroundColor = Colors.blue;
                  break;
                case 'green':
                  backgroundColor = Colors.green;
                  break;
                default:
                  backgroundColor = Colors.white;
              }
            });
          },
        ),
      ),
    );
  }
}
