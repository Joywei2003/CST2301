import 'package:flutter/material.dart';
import 'database.dart';
import 'countries.dart';

class States extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final String statename, stateinfo, countryname, country;
  States({this.statename = '', this.stateinfo = '',this.countryname = '', this.country= ''});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: DefaultTabController(length: 3,
        child: Scaffold(
          appBar: AppBar(title: Text(statename),
          bottom: TabBar(tabs: [Tab(text: 'General',),Tab(text: 'Hiking',),Tab(text: 'Camping')],)),
        body: TabBarView(
          children: [
            Column(children: [
              SizedBox(height: 10),
              Image.asset('lib/images/'+statename.toLowerCase()+'.png'),
              SizedBox(height: 10),
              Text(statetext[stateinfo] ?? ''),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedButton(
                  onPressed: (){Navigator.pushNamed(context, country);},
                  child:Text(countryname)
                ),
                OutlinedButton(
                  onPressed: () {Navigator.pop(context);},
                  child: Text('Back')
                ),
                OutlinedButton(
                  onPressed: (){goBack(context);},
                  hild:Text('Back to Colleges')
                ),
              ],)
            ],),
            Column(children: [
              SizedBox(height: 10),
              Text(statetext[stateinfo+' hiking'] ?? ''),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedButton(
                  onPressed: (){Navigator.pushNamed(context, country);},
                  child:Text(countryname)
                ),
                OutlinedButton(
                  onPressed: () {Navigator.pop(context);},
                  child: Text('Back')
                ),
                OutlinedButton(
                  onPressed: (){goBack(context);},
                  child:Text('Back to Colleges')
                ),
              ],)
            ],),
            Column(children: [
              SizedBox(height: 10),
              Text(statetext[stateinfo+' camping'] ?? ''),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedButton(
                  onPressed: (){Navigator.pushNamed(context, country);},
                  child:Text(countryname)
                ),
                OutlinedButton(
                  onPressed: () {Navigator.pop(context);}, 
                  child: Text('Back')
                ),
                OutlinedButton(
                  onPressed: (){goBack(context);},
                  child:Text('Back to Colleges')
                ),
              ],)
            ],),
          ],
        )
        ),
      ),
    );
  }
}
class Kansas extends States {
  Kansas() :super(
    statename: 'Kansas',
    stateinfo: 'KS',
    countryname: 'United States',
    country: '/UnitedStates',
  );
}
class Oklahoma extends States {
  Oklahoma() :super(
    statename: 'Oklahoma',
    stateinfo: 'OK',
    countryname: 'United States',
    country: '/UnitedStates',
  );
}
class Massachusetts extends States {
  Massachusetts() :super(
    statename: 'Massachusetts',
    stateinfo: 'MA',
    countryname: 'United States',
    country: '/UnitedStates',
  );
}
class NewYork extends States {
  NewYork() :super(
    statename: 'New York',
    stateinfo: 'NY',
    countryname: 'United States',
    country: '/UnitedStates',
  );
}
class Texas extends States {
  Texas() :super(
    statename: 'Texas',
    stateinfo: 'TX',
    countryname: 'United States',
    country: '/UnitedStates',
  );
}
class RhodeIsland extends States {
  RhodeIsland() :super(
    statename: 'Rhode Island',
    stateinfo: 'RI',
    countryname: 'United States',
    country: '/UnitedStates',
  );
}
class Idaho extends States {
  Idaho() :super(
    statename: 'Idaho',
    stateinfo: 'ID',
    countryname: 'United States',
    country: '/UnitedStates',
  );
}
class NorthCarolina extends States {
  NorthCarolina() :super(
    statename: 'North Carolina',
    stateinfo: 'NC',
    countryname: 'United States',
    country: '/UnitedStates',
  );
}
class BritishColumbia extends States {
  BritishColumbia() :super(
    statename: 'British Columbia',
    stateinfo: 'BC',
    countryname: 'Canada',
    country: '/Canada',
  );
}
