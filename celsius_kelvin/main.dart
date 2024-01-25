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
      home: const MyHomePage(title: 'Celsius to Kelvin -Joyce Wei'),
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
  int _counter = 0;String t1='',display=''; double n1=0.0; Color clr=Colors.white, wclr=Colors.white;
  TemperatureConvert t=new TemperatureConvert();

  void _incrementCounter() {
    setState(() {
      if (t1=='') {wclr = Colors.red; display="Enter value:";}
      else {
        wclr = Colors.white; display='';
        display=t.convert(temp: n1);
        if (n1>=30) clr=Colors.orange;
        else if (n1<30.0 && n1>=18.0) clr=Colors.lightGreen;
        else if (n1<18.0 && n1>=0.0) clr=Colors.lightBlue;
        else if (n1<0.0 && n1>=-20.0) clr=Colors.blue;
        else if (n1<-20) clr=Colors.indigo;
      }
      _counter++;
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
                  labelText: 'Celsius:',
                ),
                keyboardType: TextInputType.number,
                onChanged:(text){t1=text;n1=double.parse(t1);}
              ),
            ),
            OutlinedButton(onPressed: (){_incrementCounter();}, child: Text('Convert to Kelvin'))
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
  double temp=0.0; String feel="";
  TemperatureConvert({this.temp = 0.0,this.feel=''});
  String convert({temp}){
    if (temp>=30) feel='Hot';
    else if (temp<30.0 && temp>=18.0) feel='Warm';
    else if (temp<18.0 && temp>=0.0) feel='Cold';
    else if (temp<0.0 && temp>=-20.0) feel='Very Cold';
    else if (temp<-20) feel='Extreme Cold';
    return '$temp celsius is ${temp+273.0} kelvin: $feel';
  }
}
