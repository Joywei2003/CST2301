import 'package:flutter/material.dart';

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
      home: const MyHomePage(title: 'Calculator - Joyce Wei'),
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
  int _counter = 0; String num1="", num2="", display="total";
  Calulate c=Calulate();

  void _incrementCounter() {
    setState(() {
      display=c.sum(num1: double.parse(num1),num2: double.parse(num2))+"./n"+
              c.diffrence(num1: double.parse(num1),num2: double.parse(num2))+"./n"+
              c.product(num1: double.parse(num1),num2: double.parse(num2))+"./n"+
              c.quotient(num1: double.parse(num1),num2: double.parse(num2))+"./n"+
              c.average(num1: double.parse(num1),num2: double.parse(num2));
      _counter++;
    });
  }

  String sum({num1,num2}){
    return 'Sum of numbers is ${num1+num2}';
  }
  String diffrence({num1,num2}){
    return 'Diffrence of numbers is ${num1-num2} or ${num2-num1}';
  }
  String product({num1,num2}){
    return 'Product of numbers is ${num1*num2}';
  }
  String quotient({num1,num2}){
    if (num1==0 ||num2==0) return 'Please enter a non zero number';
    return 'Quotient of numbers is ${(num1/num2).round()}or ${(num2/num1).round()}.';
  }
  String average({num1,num2}){
    return 'Average of numbers is ${(num1+num2)/2}';
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
          Padding(padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: ' Enter a number: ',
                border: OutlineInputBorder()
              ),
              onChanged: (text){print(text);num1=text;}
            ),
          ),
          Padding(padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: ' Enter another number: ',
                border: OutlineInputBorder()
              ),
              onChanged: (text){num2=text;},
            ),
          ),
          Text(display, style: TextStyle(fontSize: 20),),
        ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
class Calulate{
  double num1,num2;
  Calulate({this.num1=0.0,this.num2=0.0});
  String sum({num1,num2}){
    return 'Sum of numbers is ${num1+num2}';
  }
  String diffrence({num1,num2}){
    return 'Diffrence of numbers is ${num1-num2} or ${num2-num1}';
  }
  String product({num1,num2}){
    return 'Product of numbers is ${num1*num2}';
  }
  String quotient({num1,num2}){
    if (num1==0 ||num2==0) return 'Please enter a non zero number';
    return 'Quotient of numbers is ${num1/num2}or ${num2/num1}.';
  }
  String average({num1,num2}){
    return 'Average of numbers is ${(num1+num2)/2}';
  }
}
