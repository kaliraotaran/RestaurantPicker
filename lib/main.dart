import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  List<String> restaurant=[
    'McDonald\'s',
    'Panda Express',
    'Five guys',
    'In & Out',
    'Hooters',
  ];
int currentIndex=3;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Center
      (child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                    Text('What do you want to eat',),

          Text(restaurant[currentIndex], style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
       
          Padding(padding: EdgeInsets.only(top: 50)),

         ElevatedButton(
          
          onPressed: (){updateIndex();}, child: Text('Pick restaurant'), 
         style: ElevatedButton.styleFrom(
          backgroundColor: Colors.amberAccent,
           shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15))
            ),
              ) 
         
            ],
          ),
        ),
      ),
    );
  }

void updateIndex(){
  final random = Random();
  final index = random.nextInt(restaurant.length);// this set the range from 0 to 5
  setState(() {
    currentIndex = index;
  });

}

}

