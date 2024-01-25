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
      home: const MyHomePage(title: 'Final Exam - Joyce Wei'),
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
  String t1='',display=''; double n1=0.0; Color clr=Colors.white, wclr=Colors.white;
  TemperatureConvert t=new TemperatureConvert();

  void _incrementCounter() {
    setState(() {
      if (t1=='') {wclr = Colors.red; display="Enter value:";}
      else {
        wclr = Colors.white; display='';
        display=t.convert(temp: n1);
        if (n1>=212.0) clr=Colors.red;
        else if (n1<212.0 && n1>=32.0) clr=Colors.lightGreen;
        else if (n1<32) clr=Colors.indigo;
      }
    });
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
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(width:200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Fahrenheit:',
                ),
                keyboardType: TextInputType.number,
                onChanged:(text){t1=text;n1=double.parse(t1);}
              ),
            ),
            OutlinedButton(
              onPressed: (){_incrementCounter();},
               child: Text('Convert to Celsius')
            )
          ],),
          SizedBox(height: 10,),
          Container(width:350, height:50, color:wclr, 
          child: Padding(padding: const EdgeInsets.all(12.0),
            child: Text(display ,style: TextStyle(fontSize: 19, color: clr),)
          ),
          ),
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

  class TemperatureConvert{
  double temp=0.0, celsius=0.0; String state="";
  TemperatureConvert({this.temp = 0.0,this.celsius = 0.0,this.state=''});
  String convert({temp}){
    if (temp>=212.0) state='Gas';
    else if (temp<212.0 && temp>=32.0) state='Liquid';
    else if (temp<32.0) state='Solid';
    celsius=(temp-32)*(5/9);
    return '$temp Fahrenheit is ${celsius.round()} celsius: $state';
  }
}
