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
      home: const MyHomePage(title: 'Grade Calculator-Joyce Wei'),
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
  int _counter = 0; String t1='',t2='', display='';double n2=0.0;
  GradeCalculate t= GradeCalculate();
  void _incrementCounter() {
    setState(() {
      display =t.getLetterGrade(name:t1,grade:n2);
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
          Text('How are you'),
          SizedBox(height: 10,),
          Container(width: 200, 
            child: TextField(
              decoration: InputDecoration(
                labelText: ' Enter your name:', 
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.text,onChanged: (text){t1=text;},
            ),
          ),
          SizedBox(height: 10,),
          Container(width: 200, 
            child: TextField(
              decoration: InputDecoration(
                labelText: ' Enter the grade: ', 
                border: OutlineInputBorder()
              ),
              keyboardType: TextInputType.number,onChanged: (text){t2=text; n2=double.parse(t2);},
            ),
          ),
          SizedBox(height: 10,),
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

class GradeCalculate{
  double grade=0.0;String _letter='',name='';
  GradeCalculate({this.name= '', this.grade = 0.0});
  String getLetterGrade({name,grade}){
    if (grade <=100 && grade>=90.0) _letter='A';
    else if (grade<90 && grade>=80.0) _letter='B';
    else if (grade<80 && grade>=70.0) _letter='C';
    else if (grade<70 && grade>=60.0) _letter='D';
    else if (grade<60.0 && grade>=0) _letter='F';
    return'$name has $_letter letter grade.';
  }
}
