import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Guess Game - Joyce Wei'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; String t1='',display='';int n1=0;
  Guess g=Guess();
  TextEditingController t=TextEditingController();

  void _incrementCounter() {
    setState(() {
      if(t1=='') display='Enter a number';
      else if(n1>0 || n1<100) display='Enter a number 1 - 100';
      else{
        (display=g.seeguess(n1:n1));
        print('increment counter is called');
      }
    _counter++;
    });
  }
  void reset(){
    g.rest();
    t.text='';
    display='';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(height: 10,),
          Container(width: 200,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter a number 1 - 100',
                border: OutlineInputBorder(),
              ),
              controller: t,
              keyboardType: TextInputType.number,
              onChanged: (text){
                t1=text;n1=int.parse(t1);
                 print('$text it is pressed $t1 $n1');
              },
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            RawMaterialButton(
              onPressed: () {_incrementCounter();}, 
              fillColor:Colors.lightBlueAccent, 
              child:Text('Enter'),
            ),
            SizedBox(width: 10,),
            RawMaterialButton(
              onPressed: () {reset();}, 
              fillColor:Colors.grey, 
              child:Text('Reset'),
            ),
          ],),
          Text(display, style: TextStyle(fontSize: 24,fontFamily: 'Calibri'),),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}

class Guess{
  int n1=0,secret=Random().nextInt(100), count=0; String output='';
  Guess({this.n1=0});
  String seeguess({n1}){
    count=count+1;
    if(n1>secret) output='Too high,try agian';
    else if(n1<secret) output='Too low,try agian';
    else if(n1==secret) output='Congratulations you won. It took $count attemps';
    return output;
  }
  void rest(){
    count=1;
    secret=Random().nextInt(100);
  }
}
