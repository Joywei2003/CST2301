import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
    
}
class MyApp  extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Business Card-Joyce Wei')),
        body: Container(
          margin: EdgeInsets.all(15),
          width: 370,height: 190,
          decoration: BoxDecoration(border: Border.all(width: 7,color: Colors.blueAccent)),
          
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Icon(Icons.account_circle, size: 100,),
                Column(children: [
                  Text('Joyce Wei', style: TextStyle(fontSize: 40),),
                  Text('City Tech Student', style: TextStyle(fontSize: 15),),
              ],),],),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text('300 Jay St',style: TextStyle(fontSize: 19),),
                Text('1-888-234-5679',style: TextStyle(fontSize: 19),),
              ],),

              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                  Icon(Icons.accessibility,size: 40,),
                  Icon(Icons.access_time_sharp,size: 40,),
                  Icon(Icons.phone_iphone,size: 40,),
                  Icon(Icons.phone_android, size: 40,)
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
