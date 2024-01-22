import 'package:flutter/material.dart';
import 'colleges.dart';
import 'cities.dart';
import 'states.dart';
import 'countries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initialRoute: '/',
    routes: {
      '/':(context)=>MyHomePage(title: 'Colleges Rows.Columns-Joyce Wei'),
      '/Wsu':(context)=>Wsu(),
      '/Ou':(context)=>Ou(),
      '/Osu':(context)=>Osu(),
      '/Ku':(context)=>Ku(),
      '/Mit':(context)=>Mit(),
      '/Cuny':(context)=>Cuny(),
      '/Nyu':(context)=>Nyu(),
      '/Opsu':(context)=>Opsu(),
      '/Rice':(context)=>Rice(),
      '/Brown':(context)=>Brown(),
      '/Isu':(context)=>Isu(),
      '/Duke':(context)=>Duke(),
      '/Utulsa':(context)=>Utulsa(),
      '/Bc':(context)=>Bc(),
      '/Suny':(context)=>Suny(),

      '/Wichita':(context)=>Wichita(),
      '/Norman':(context)=>Norman(),
      '/Stillwater':(context)=>Stillwater(),
      '/Lawrence':(context)=>Lawrence(),
      'Cambridge':(context)=>Cambridge(),
      '/Brooklyn':(context)=>Brooklyn(),
      '/Goodwell':(context)=>Goodwell(),
      '/Houston':(context)=>Houston(),
      '/Providence':(context)=>Providence(),
      '/Pocatello':(context)=>Pocatello(),
      '/Durham':(context)=>Durham(),
      '/Tulsa':(context)=>Tulsa(),
      '/Vancouver':(context)=>Vancouver(),
      '/Albany':(context)=>Albany(),

      '/Kansas':(context)=>Kansas(),
      '/Oklahoma':(context)=>Oklahoma(),
      '/Massachusetts':(context)=>Massachusetts(),
      '/NewYork':(context)=>NewYork(),
      '/Texas':(context)=>Texas(),
      '/RhodeIsland':(context)=>RhodeIsland(),
      '/Idaho':(context)=>Idaho(),
      '/NorthCaroline':(context)=>NorthCarolina(),
      '/BritishColumbia':(context)=>BritishColumbia(),

      '/UnitedStates':(context)=>UnitedStates(),
      '/Canada':(context)=>Canada(),
    },

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Colleges')),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CollegeButton(collegename: 'WSU', college: '/Wsu', textcolor: Color(0xffFFDB00), buttoncolor: Color(0xff27251F)),
              CollegeButton(collegename: 'OU', college: '/Ou', textcolor: Color(0xffFDF9D8), buttoncolor: Color(0xff841617)),
              CollegeButton(collegename: 'OSU', college: '/Osu', textcolor: Color(0xffE8000D), buttoncolor: Color(0xffFF7300)),
              CollegeButton(collegename: 'KU', college: '/Ku', textcolor: Color(0xffE8000D), buttoncolor: Color(0xff0051BA)),
              CollegeButton(collegename: 'MIT', college: '/Mit', textcolor: Color(0xff750014), buttoncolor: Color(0xff8b959e)),
            ],),
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              CollegeButton(collegename: 'CUNY', college: '/Cuny', textcolor: Color(0xfffaa627), buttoncolor: Color(0xff2574bb)),
              CollegeButton(collegename: 'NYU', college: '/Nyu', textcolor: Color(0xff000000), buttoncolor: Color(0xff57068c)),
              CollegeButton(collegename: 'OPSU', college: '/Opsu', textcolor: Color(0xff001f5c), buttoncolor: Color(0xffBABEC2)),
              CollegeButton(collegename: 'RICE', college: '/Rice', textcolor: Color(0xff00205B), buttoncolor: Color(0xffC1C6C8)),
              CollegeButton(collegename: 'BROWN', college: '/Brown', textcolor: Color(0xffED1C24), buttoncolor: Color(0xff4E3629)),
            ],),
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                CollegeButton(collegename: 'ISU', college: '/Isu', textcolor: Color(0xffC8102E), buttoncolor: Color(0xffF1BE48)),
                CollegeButton(collegename: 'DUKE', college: '/Duke', textcolor: Color(0xffFFFFFF), buttoncolor: Color(0xff003087)),
                CollegeButton(collegename: 'UTULSA', college: '/Utulsa', textcolor: Color(0xffC8102E), buttoncolor: Color(0xff84754E)),
                CollegeButton(collegename: 'BC', college: '/Bc', textcolor: Color(0xffFFFFFF), buttoncolor: Color(0xff002145)),
                CollegeButton(collegename: 'SUNY', college: '/Suny', textcolor: Color(0xff827E76), buttoncolor: Color(0xffEDAC09)),
            ],),
          ],
        ),
      ),
      ),
    );
  }

  Widget button({String collegename='college', Widget college= const Text('data')}) {
    return OutlinedButton(child: Text(collegename), onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder:(context)=> college));
    });
  }
}
class CollegeButton extends StatelessWidget {
  final String college, collegename;
  final Color buttoncolor, textcolor;

  CollegeButton({this.collegename='', this.college= '', this.buttoncolor=Colors.white, this.textcolor=Colors.black,});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OutlinedButton(
          child: Text(collegename, style: TextStyle(color: textcolor),), 
            onPressed: (){Navigator.pushNamed(context, college);},
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(buttoncolor)),
        ),
        Text('Joyce Wei', style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 9)),
      ],
    );
  }
}
