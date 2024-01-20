import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    int _counter = 0; double length=50; String name="Joyce Wei";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: ('Test 1 Review 1-Joyce Wei')),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Row(children: [
             Container(width: length,height: length,color: Colors.brown,child: Text(name),),
             Container(width: length,height: length,color: Colors.blue,child: Text(name),),
             Container(width: length,height: length,color: Colors.teal,child: Text(name),),
             Container(width: length,height: length,color: Colors.grey[400],child: Text(name),),
             Container(width: length,height: length,color: Colors.brown,child: Text(name),),
           ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.redAccent,child: Text(name),),
              SizedBox(width: 2*length,height: length,),
              Container(width: length,height: length,color: Colors.redAccent,child: Text(name),),
              Container(width: length,height: length,color: Colors.blueGrey,child: Text(name),),
            ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.grey[400],child: Text(name),),
              SizedBox(width: length,height: length,),
              Container(width: length,height: length,color: Colors.pinkAccent,child: Text(name),),
              SizedBox(width: length,height: length,),
              Container(width: length,height: length,color: Colors.lightBlue,child: Text(name),),
            ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.redAccent,child: Text(name),),
              Container(width: length,height: length,color: Colors.lime,child: Text(name),),
              SizedBox(width: 2*length,height: length,),
              Container(width: length,height: length,color: Colors.grey[400],child: Text(name),),
            ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.lightGreen,child: Text(name),),
              SizedBox(width: 3*length,height: length,),
              Container(width: length,height: length,color: Colors.lime,child: Text(name),),
            ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.brown,child: Text(name),),
              SizedBox(width: 3*length,height: length,),
              Container(width: length,height: length,color: Colors.grey,child: Text(name),),
            ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.redAccent,child: Text(name),),
              Container(width: length,height: length,color: Colors.blue,child: Text(name),),
              SizedBox(width: 2*length,height: length,),
              Container(width: length,height: length,color: Colors.grey[400],child: Text(name),),
            ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.blueGrey,child: Text(name),),
              SizedBox(width: length,height: length,),
              Container(width: length,height: length,color: Colors.green,child: Text(name),),
              SizedBox(width: length,height: length,),
              Container(width: length,height: length,color: Colors.blueGrey,child: Text(name),),
            ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.green,child: Text(name),),
              SizedBox(width: 2*length,height: length,),
              Container(width: length,height: length, color: Colors.blue,child: Text(name),),
              Container(width: length,height: length,color: Colors.greenAccent,child: Text(name),),
            ],),
            Row(children: [
              Container(width: length,height: length,color: Colors.blue,child: Text(name),),
              Container(width: length,height: length,color: Colors.teal,child: Text(name),),
              Container(width: length,height: length,color: Colors.grey,child: Text(name),),
              Container(width: length,height: length,color: Colors.brown,child: Text(name),),
              Container(width: length,height: length,color: Colors.purple,child: Text(name),),
            ],),
          ],
        ),
      ),
      ),
    );
  }
}
