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
      home: const MyHomePage(title: 'Final Review'),
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
  int _counter = 0; String t1='', display=''; double n1=0.0; Color clr=Colors.white, wclr=Colors.white;
  TemperatureConvert t=new TemperatureConvert();

  void _incrementCounter() {
    setState(() {
      if (t1=='') {wclr = Colors.red; display="Enter value:";}
      else {
        wclr = Colors.white; display='';
        display=t.convert(temp: n1);
        if (n1>=5148) clr=Colors.red;
        else if (n1<5148 && n1>=2800) clr=Colors.purple;
        else if (n1<2800) clr=Colors.indigo;
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
          Row(mainAxisAlignment: MainAxisAlignment.center,children: [
            Container(width:200,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kelvin:'
                ),
                keyboardType: TextInputType.number,
                onChanged:(text){t1=text;n1=double.parse(t1);}
              ),
            ),
            OutlinedButton(
              onPressed: (){_incrementCounter();}, c
              hild: Text('Convert to Fº')
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
  int k; double f=0.0; String feel="";
  TemperatureConvert({this.k = 0,this.f=0.0, this.feel=''});
  String convert({temp}){
    f = (k-273.0)*(9/5)+32;
    if (f>=5184) feel='boiling';
    else if (f<5184 && f>=28000) feel='Meleting';
    else if (f<2800) feel='Solid';
    return '$k kelvin is ${f.round()} fahrenheit: $feel';;
  }
}
