import 'package:flutter/material.dart';
import 'database.dart';
import 'cities.dart';

class College extends StatelessWidget {

  final String collegename, collegetext, cityname, city;
  College({this.collegename = '', this.collegetext = '', this.cityname = '', this.city=''});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(collegename)),
      body: Column(
        children: [
          SizedBox(height: 10),
          Image.asset('lib/images/'+collegetext.toLowerCase()+'logo.png'),
          SizedBox(height: 10,),
          Text(info[collegetext] ?? ''),
          SizedBox(height: 10),
          Text(cities['City of $cityname'] ?? ''),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: (){Navigator.pushNamed(context, city);},
              child:Text(cityname)
            ),
            OutlinedButton(
              onPressed: () {Navigator.pop(context);}, 
              child: Text('Back')
            ),
          ],)
        ],
      ),
      ),
    );
  }
}

class Wsu extends College {
  Wsu() :super(
    collegename: 'Wichita State University',
    collegetext: 'WSU',
    cityname: 'Wichita',
    city: '/Wichita',
  );
}

class Ou extends College {
  Ou() :super(
    collegename: 'Oklahoma University',
    collegetext: 'OU',
    cityname: 'Norman',
    city: '/Norman',
  );
}

class Osu extends College {
  Osu() :super(
    collegename: 'Oklahoma State University',
    collegetext: 'OSU',
    cityname: 'Stillwater',
    city: '/Stillwater',
  );
}

class Ku extends College {
  Ku() :super(
    collegename: 'Kansas University',
    collegetext: 'KU',
    cityname: 'Lawrence',
    city: '/Lawrence',
  );
}

class Mit extends College {
  Mit() :super(
    collegename: 'Massachuset Institude of Technology',
    collegetext: 'MIT',
    cityname: 'Cambridge',
    city: '/Cambridge',
  );
}

class Cuny extends College {
  Cuny() :super(
    collegename: 'City University of New York',
    collegetext: 'CUNY',
    cityname: 'Brooklyn',
    city: '/Brooklyn',
  );
}

class Nyu extends College {
  Nyu() :super(
    collegename: 'New York University',
    collegetext: 'NYU',
    cityname: 'Brooklyn',
    city: '/Brooklyn',
  );
}

class Opsu extends College {
  Opsu() :super(
    collegename: 'Oklahoma PanHandle State University',
    collegetext: 'OPSU',
    cityname: 'Goodwell',
    city: '/Goodwell',
  );
}

class Rice extends College {
  Rice() :super(
    collegename: 'Rice University',
    collegetext: 'RICE',
    cityname: 'Houston',
    city: '/Houston',
  );
}

class Brown extends College {
  Brown() :super(
    collegename: 'Brown University',
    collegetext: 'BROWN',
    cityname: 'Providence',
    city: '/Providence',
  );
}

class Isu extends College {
  Isu() :super(
    collegename: 'Tdaho State University',
    collegetext: 'ISU',
    cityname: 'Pocatello',
    city: '/Pocatello',
  );
}

class Duke extends College {
  Duke() :super(
    collegename: 'Duke University',
    collegetext: 'DUKE',
    cityname: 'Durham',
    city: '/Durham',
  );
}

class Utulsa extends College {
  Utulsa() :super(
    collegename: 'Tulsa University',
    collegetext: 'UTULSA',
    cityname: 'Tulsa',
    city: '/Tulsa',
  );
}

class Bc extends College {
  Bc() :super(
    collegename: 'British Columbia University',
    collegetext: 'BC',
    cityname: 'Vancouver',
    city: '/Vancouver',
  );
}

class Suny extends College {
  Suny() :super(
    collegename: 'State University of New York',
    collegetext: 'SUNY',
    cityname: 'Albany',
    city: '/Albany',
  );
}
