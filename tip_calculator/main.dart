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
      home: const MyHomePage(title: 'Tip Calculator-Joyce Wei'),
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
  int _counter = 0; String t1='',t2='',display=''; double n2=0.0;
  TipCalculate t=TipCalculate();

  void _incrementCounter() {
    setState(() {
      display=t.tip(bill: n2,service: t1);
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
          Padding(padding: const EdgeInsets.all(22.0),
            child: TextField(
              decoration: InputDecoration(labelText: ' G=good A=aliright N=Notbad P=Poor',
              border: OutlineInputBorder()),
              keyboardType: TextInputType.text,
              onChanged: (text){t1=text;},
            ),
          ),
          Padding(padding: const EdgeInsets.all(22.0),
            child: TextField(
              decoration: InputDecoration(labelText: ' Enter bill amount: ', 
              border: OutlineInputBorder()),
              keyboardType: TextInputType.number,
              onChanged: (text){t2=text; n2=double.parse(t2);},
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
class TipCalculate{
  double bill=0, tiprate=0;
  String service='', result='';

  TipCalculate({this.bill=0.0,this.service=''});
  String tip({bill,service}){
    if (service=='g') tiprate=0.25;
    else if (service=='a') tiprate=0.15;
    else if (service=='n') tiprate=0.10;
    else if (service=='p') tiprate=0.0;
    else return 'input one: G=good A=aliright N=Notbad P=Poor';
    return 'Tip is \$${tiprate*bill}';
  }
}
