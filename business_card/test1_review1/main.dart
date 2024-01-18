import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Business Card-Joyce Wei')),
      body: Center(
        child: Column(
          children: [
            Row(children: [
              SizedBox(width: 4*50,),
              Container(width: 50, height: 50, color: Colors.brown, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              SizedBox(width: 3*50,),
              Container(width: 50, height: 50, color: Colors.red, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              SizedBox(width: 2*50,),
              Container(width: 50, height: 50, color: Colors.pinkAccent, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              SizedBox(width: 1*50,),
              Container(width: 50, height: 50, color: Colors.lightGreenAccent, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              Container(width: 50, height: 50, color: Colors.lightGreen, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              Container(width: 50, height: 50, color: Colors.brown, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              SizedBox(width: 1*50,),
              Container(width: 50 ,height: 50, color: Colors.blue, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              SizedBox(width: 2*50,),
              Container(width: 50, height: 50, color: Colors.green, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              SizedBox(width: 3*50,),
              Container(width: 50, height: 50, color: Colors.blueAccent, child: Text("Joyce Wei"),)
            ],),
            Row(children: [
              SizedBox(width: 4*50,),
              Container(width: 50, height: 50, color: Colors.purple, child: Text("Joyce Wei"),)
            ],),
          ],
        )
      ),
      ),
    );
  }
}
