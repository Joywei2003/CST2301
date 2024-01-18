import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('LabLayout0 - Joyce Wei')),
      body: Stack(
        children: [
          SizedBox(width: 300,height: 300,child: Container(color: Colors.yellow)),
          Positioned(width: 100,height: 30, top: 50, left: 10,
              child: Container(color: Colors.cyan,
              child: Text('Joyce Wei'),)),
          Positioned(width: 100,height: 30, top: 50, left: 190,
              child: Container(color: Colors.cyan,
                child: Text('Joyce Wei'),)),
          Positioned(width: 30,height: 80, top: 60, left: 135,
              child: Container(color: Colors.cyan,)),
          Positioned(width: 200,height: 15, top: 170, left: 50,
              child: Container(color: Colors.cyan,
                child: Text('                    Joyce Wei'),)),
        ],
      )
      ),
    );
  }
}
