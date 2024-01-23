import 'package:flutter/material.dart';
import 'database.dart';

class Countries extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final String countryname, countryinfo;
  Countries({this.countryname = '', this.countryinfo = '',});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(title: Text(countryname)),
      body: Column(
        children: [
          SizedBox(height: 10),
          Image.asset('lib/images/'+countryinfo.toLowerCase()+'.png'),
          SizedBox(height: 10),
          Text(countries[countryinfo] ?? ''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text('Back')
            ),
            OutlinedButton(
              onPressed: (){goBack(context);},
              child:Text('Back to Colleges')
            ),
          ],)
        ],
      ),
      ),
    );
  }
}
class UnitedStates extends Countries {
  UnitedStates() :super(
    countryname: 'United States ',
    countryinfo: 'United States',
  );
}
class Canada extends Countries {
  Canada() :super(
    countryname: 'Canada ',
    countryinfo: 'Canada',
  );
}
