import 'package:flutter/material.dart';
import 'dart:math';
import 'database.dart';
import 'states.dart';

class LandMarks {
  final String title, description, image;
  LandMarks({this.title = '', this.description = '', this.image = ''});
}

class Distance {
  double originx = 0, originy = 0, destinationx = 0, destinationy = 0;
  double result = 0, x = 0, y = 0, deglen = 110.25;
  Distance({this.originx = 0, this.originy = 0, this.destinationx = 0, this.destinationy = 0});

  String calc({originx = 40.67, originy = 73.94,}) {
    x = originx - destinationx; y = (originy - destinationy) * cos(destinationx);
    result = deglen * sqrt(x * x + y * y).round();
    return '$result kilometers from 300 Jay St Brooklyn';
  }
}
class Wichita extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final mall = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final museum = LandMarks(
    title: '',
    description: '.',
    image: '',
  );
  final zoo = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final List<LandMarks> wichitalandmarks = [];
  int x = 0; final fish = Distance(destinationx: 37.6872, destinationy: 97.3301); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      wichitalandmarks.add(mall);
      wichitalandmarks.add(museum);
      wichitalandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Wichita1')),
      body: Column(
        children: [
          Text(cities['Wichita'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: wichitalandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(wichitalandmarks[index].image)),
                title: Text(wichitalandmarks[index].title),
                subtitle: Text(wichitalandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Kansas');},
              child: Text('Kansas')
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
        ],
      ),
      ),
    );
  }
}
class Norman extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final mall = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final museum = LandMarks(
    title: '',
    description: '.',
    image: '',
  );
  final zoo = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final List<LandMarks> normanlandmarks = [];
  int x = 0; final fish = Distance(destinationx: 35.2226, destinationy: 97.4395); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      normanlandmarks.add(mall);
      normanlandmarks.add(museum);
      normanlandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Norman')),
      body: Column(
        children: [
          Text(cities['Norman'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: normanlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(normanlandmarks[index].image)),
                title: Text(normanlandmarks[index].title),
                subtitle: Text(normanlandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Oklahoma');},
              child: Text('Oklahoma')
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
        ],
      ),
      ),
    );
  }
}

class Stillwater extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final mall = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final museum = LandMarks(
    title: '',
    description: '.',
    image: '',
  );
  final zoo = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final List<LandMarks> stillwaterlandmarks = [];
  int x = 0; final fish = Distance(destinationx: 36.1156, destinationy: 97.0584); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      stillwaterlandmarks.add(mall);
      stillwaterlandmarks.add(museum);
      stillwaterlandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Stillwater')),
      body: Column(
        children: [
          Text(cities['Stillwater'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: stillwaterlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(stillwaterlandmarks[index].image)),
                title: Text(stillwaterlandmarks[index].title),
                subtitle: Text(stillwaterlandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Oklahoma');},
              child: Text('Oklahoma')
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
        ],
      ),
      ),
    );
  }
}

class Lawrence extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){
      Navigator.pop(context);}
  }
  final mall = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final museum = LandMarks(
    title: '',
    description: '.',
    image: '',
  );
  final zoo = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final List<LandMarks> lawrencelandmarks = [];
  int x = 0; final fish = Distance(destinationx: 42.7070, destinationy: 71.1631); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      lawrencelandmarks.add(mall);
      lawrencelandmarks.add(museum);
      lawrencelandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Lawrence')),
      body: Column(
        children: [
          Text(cities['Lawrence'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: lawrencelandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(lawrencelandmarks[index].image)),
                title: Text(lawrencelandmarks[index].title),
                subtitle: Text(lawrencelandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Kansas');},
              child: Text('Kansas')
            ),
            OutlinedButton(
              onPressed: () { Navigator.pop(context);},
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

class Cambridge extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final mall = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final museum = LandMarks(
    title: '',
    description: '.',
    image: '',
  );
  final zoo = LandMarks(
    title: '',
    description: '',
    image: '',
  );
  final List<LandMarks>  cambrigelandmarks= [];
  int x = 0; final fish = Distance(destinationx: 52.1951, destinationy: 0.1313); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      cambrigelandmarks.add(mall);
      cambrigelandmarks.add(museum);
      cambrigelandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Cambridge')),
      body: Column(
        children: [
          Text(cities['Cambridge'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: cambrigelandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(cambrigelandmarks[index].image)),
                title: Text(cambrigelandmarks[index].title),
                subtitle: Text(cambrigelandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Massachusetts');},
              child: Text('Massachusetts')
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
        ],
      ),
      ),
    );
  }
}

class Brooklyn extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final bridge = LandMarks(
    title: 'Brooklyn Bridge',
    description: 'The Brooklyn Bridge is a hybrid cable-stayed/suspension bridge in New York City, spanning the East River between the boroughs of Manhattan and Brooklyn. Opened on May 24, 1883, the Brooklyn Bridge was the first fixed crossing of the East River.',
    image: '',
  );
  final museum = LandMarks(
    title: 'Brooklyn Museum',
    description: "The Brooklyn Museum is an art museum located in the New York City borough of Brooklyn. At 560,000 square feet (52,000 m2), the museum is New York City's second largest and contains an art collection with around 500,000 objects.",
    image: '',
  );
  final park = LandMarks(
    title: 'Prospect Park',
    description: 'Prospect Park is an urban park in Brooklyn, New York City. The park is situated between the neighborhoods of Park Slope, Prospect Heights, Prospect Lefferts Gardens, Flatbush, and Windsor Terrace, and is adjacent to the Brooklyn Museum, Grand Army Plaza, and the Brooklyn Botanic Garden. ',
    image: '',
  );
  final List<LandMarks> brooklynlandmarks = [];
  int x = 0; final fish = Distance(destinationx: 40.6782, destinationy: 73.9442); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      brooklynlandmarks.add(bridge);
      brooklynlandmarks.add(museum);
      brooklynlandmarks.add(park);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Brooklyn')),
      body: Column(
        children: [
          Text(cities['Brooklyn'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: brooklynlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(brooklynlandmarks[index].image)),
                title: Text(brooklynlandmarks[index].title),
                subtitle: Text(brooklynlandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/NewYork');},
              child: Text('New York')
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
        ],
      ),
      ),
    );
  }
}

class Goodwell extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final museum = LandMarks(
    title: "No Man's Land Museum",
    description: "The No Man's Land Historical Society is an organization that has been preserving the Oklahoma Panhandle's heritage since its establishment in 1934. The founders were surviving pre-territorial pioneers from the area who wanted to sustain the historical documents and pioneer relics that marked the settling of No Man's land for future generations.",
    image: '',
  );
  final park = LandMarks(
    title: 'Cimarron National Grassland',
    description: 'Cimarron National Grassland is a National Grassland located in Morton County, Kansas, United States, with a very small part extending eastward into Stevens County. Cimarron National Grassland is located near Comanche National Grassland which is across the border in Colorado.',
    image: '',
  );
  final List<LandMarks> goodwelllandmarks = [];
  int x = 0; final fish = Distance(destinationx: 36.5953, destinationy: 101.6366); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      goodwelllandmarks.add(museum);
      goodwelllandmarks.add(park);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Goodwell')),
      body: Column(
        children: [
          Text(cities['Goodwell'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: goodwelllandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(goodwelllandmarks[index].image)),
                title: Text(goodwelllandmarks[index].title),
                subtitle: Text(goodwelllandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Oklahoma');},
              child: Text('Oklahoma')),
            OutlinedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text('Back')),
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

class Houston extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }

  final mall = LandMarks(
    title: 'The Galleria',
    description: 'The Galleria, stylized theGalleria and also known as the Houston Galleria, is an upscale mixed-use urban development and shopping mall located in the Uptown District of Houston, Texas, United States.',
    image: '',
    );
  final museum = LandMarks(
    title: 'Space Center Houston',
    description: 'Space Center Houston is a science museum that serves as the official visitor center of NASA Johnson Space Center in Houston. It was designated a Smithsonian Affiliate museum in 2014.',
    image: '',
  );
  final zoo = LandMarks(
    title: 'Houston Zoo',
    description: 'The Houston Zoo is a 55-acre zoological park located within Hermann Park in Houston, Texas, United States. The zoo houses over 6,000 animals from more than 900 species.',
    image: '',
  );
  final List<LandMarks> houstonlandmarks = [];
  int x = 0; final fish = Distance(destinationx: 29.7604, destinationy: 95.3698); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      houstonlandmarks.add(mall);
      houstonlandmarks.add(museum);
      houstonlandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Houston')),
      body: Column(
        children: [
          Text(cities['Houston'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: houstonlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(houstonlandmarks[index].image)),
                title: Text(houstonlandmarks[index].title),
                subtitle: Text(houstonlandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Texas');},
              child: Text('Texas')),
            OutlinedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text('Back')),
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

class Providence extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final center = LandMarks(
    title: 'Providence Performing Arts Center',
    description: 'The Providence Performing Arts Center (PPAC), is a multi-use not-for-profit theater located downtown Providence, Rhode Island. It was built in 1928 as a movie palace by the Loews Theatres chain to designs by Rapp & Rapp, the leading designers of music palaces at the time.',
    image: '',
  );
  final museum = LandMarks(
    title: 'RISD Museum',
    description: 'The Museum of Art, Rhode Island School of Design (RISD Museum) is an art museum integrated with the Rhode Island School of Design, in Providence, Rhode Island, US. The museum was co-founded with the school in 1877.',
    image: '',
  );
  final zoo = LandMarks(
    title: 'Roger Williams Park Zoo',
    description: 'The Roger Williams Park Zoo of Providence, Rhode Island, contains more than 150 animals from around the world in natural settings. In 1986, it became the first zoo in New England to earn accreditation from the Association of Zoos and Aquariums.',
    image: '',
  );
  final List<LandMarks> providencelandmarks = [];
  int x = 0; final fish = Distance(destinationx: 41.8240, destinationy: 71.4128); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      providencelandmarks.add(center);
      providencelandmarks.add(museum);
      providencelandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Providence')),
      body: Column(
        children: [
          Text(cities['Providence'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: providencelandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(providencelandmarks[index].image)),
                title: Text(providencelandmarks[index].title),
                subtitle: Text(providencelandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/RhodeIsland');},
              child: Text('Rhode Island')),
            OutlinedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text('Back')),
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

class Pocatello extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final amusment = LandMarks(
    title: 'Outer Limits Fun Zone',
    description: 'Outer Limits Fun Zone is a facility that has over 30,000 sq ft. of fun. Play the latest arcade games and redeem your tickets for a variety of prizes.',
    image: '',
  );
  final museum = LandMarks(
    title: 'Idaho Museum of Natural History',
    description: 'The Idaho Museum of Natural History (IMNH) is the official state natural history museum of Idaho, located on the campus of Idaho State University (ISU) in Pocatello. Founded in 1934, it has collections in anthropology, vertebrate paleontology, earth science, and the life sciences.',
    image: '',
  );
  final zoo = LandMarks(
    title: 'Zoo Idaho',
    description: 'Zoo Idaho is a zoo in Pocatello, Idaho, that features animals native to the Intermountain West and has been open since 1932. The zoo has more than 100 animals representing about 40 different species. It is one of two zoos in the United States specializing in animals native to the Intermountain West.',
    image: '',
  );
  final List<LandMarks> pocatellolandmarks = [];
  int x = 0; final fish = Distance(destinationx: 42.8621, destinationy: 112.4506); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      pocatellolandmarks.add(amusment);
      pocatellolandmarks.add(museum);
      pocatellolandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Pocatello')),
      body: Column(
        children: [
          Text(cities['Pocatello'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: pocatellolandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(pocatellolandmarks[index].image)),
                title: Text(pocatellolandmarks[index].title),
                subtitle: Text(pocatellolandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Idaho');},
              child: Text('Idaho')
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
        ],
      ),
      ),
    );
  }
}

class Durham extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final bennett = LandMarks(
    title: 'Bennett Place',
    description: 'Bennett Place is a former farm and homestead in Durham, North Carolina, which was the site of the last surrender of a major Confederate army in the American Civil War, when Joseph E. Johnston surrendered to William T. Sherman. ',
    image: '',
  );
  final museum = LandMarks(
    title: 'Durham Zoo',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    image: '',
  );
  final park = LandMarks(
    title: 'William B. Umstead State Park',
    description: 'William B. Umstead State Park is a North Carolina state park in Wake County, North Carolina in the United States. It covers 5,599 acres nestled between the expanding cities of Raleigh, Cary, and Durham, North Carolina. ',
    image: '',
  );
  final List<LandMarks> durhamlandmarks = [];
  int x = 0; final fish = Distance(destinationx: 35.9940, destinationy: 78.8986); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      durhamlandmarks.add(bennett);
      durhamlandmarks.add(museum);
      durhamlandmarks.add(park);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Durham')),
      body: Column(
        children: [
          Text(cities['Durham'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: durhamlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(durhamlandmarks[index].image)),
                title: Text(durhamlandmarks[index].title),
                subtitle: Text(durhamlandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/NorthCarolina');},
              child: Text('North Caroline')),
            OutlinedButton(
              onPressed: () {Navigator.pop(context);},
              child: Text('Back')),
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

class Tulsa extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final center = LandMarks(
    title: 'Tulsa Performing Arts Center ',
    description: 'The Tulsa Performing Arts Center, or Tulsa PAC, is a performing arts venue in the city of Tulsa, Oklahoma. It houses four main theatres, a studio space, an art gallery and a sizeable reception hall. I',
    image: '',
  );
  final museum = LandMarks(
    title: 'Philbrook Museum',
    description: 'Philbrook Museum of Art is an art museum with expansive formal gardens located in Tulsa, Oklahoma. The museum, which opened in 1939, is located in a former 1920s villa, "Villa Philbrook", the home of Oklahoma oil pioneer Waite Phillips and his wife Genevieve.',
    image: '',
  );
  final zoo = LandMarks(
    title: 'Tusla Zoo',
    description: 'The Tulsa Zoo is an 84-acre (34 ha) non-profit zoo located in Tulsa, Oklahoma, United States. The Tulsa Zoo is owned by the City of Tulsa, but since 2010, has been privately managed by Tulsa Zoo Management, Inc.',
    image: '',
  );
  final List<LandMarks> tulsalandmarks = [];
  int x = 0; final fish = Distance(destinationx: 36.1540, destinationy: 95.9928); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      tulsalandmarks.add(center);
      tulsalandmarks.add(museum);
      tulsalandmarks.add(zoo);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Tulsa')),
      body: Column(
        children: [
          Text(cities['Tulsa'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: tulsalandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(tulsalandmarks[index].image)),
                title: Text(tulsalandmarks[index].title),
                subtitle: Text(tulsalandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/Oklahoma');},
              child: Text('Oklahoma')
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
        ],
      ),
      ),
    );
  }
}

class Vancouver extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final island = LandMarks(
    title: 'Granville Island',
    description: 'Granville Island is a peninsula and shopping district in the Fairview neighbourhood of Vancouver, British Columbia, Canada, across False Creek from Downtown Vancouver, under the south end of the Granville Street Bridge. Formerly an industrial manufacturing area, it was named after Granville Leveson-Gower, 2nd Earl Granville.',
    image: '',
  );
  final museum = LandMarks(
    title: 'Museum of Vancouver',
    description: "The Museum of Vancouver (MOV) is a civic history museum located in Vanier Park, Vancouver, British Columbia. The MOV is the largest civic museum in Canada and the oldest museum in Vancouver. ",
    image: '',
  );
  final park = LandMarks(
    title: 'Stanley Park',
    description: "Stanley Park is a 405-hectare (1,001-acre) public park in British Columbia, Canada that makes up the northwestern half of Vancouver's Downtown Peninsula, surrounded by waters of Burrard Inlet and English Bay.",
    image:'',
  );
  final List<LandMarks> vancouverlandmarks = [];
  int x = 0; final fish = Distance(destinationx: 49.2827, destinationy: 123.1207); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      vancouverlandmarks.add(island);
      vancouverlandmarks.add(museum);
      vancouverlandmarks.add(park);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Vancouver')),
      body: Column(
        children: [
          Text(cities['Vancouver'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: vancouverlandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(vancouverlandmarks[index].image)),
                title: Text(vancouverlandmarks[index].title),
                subtitle: Text(vancouverlandmarks[index].description),
              );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/BritishColumbia');},
              child: Text('British Columbia')
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
        ],
      ),
      ),
    );
  }
}

class Albany extends StatelessWidget {
  void goBack(context){
    while(Navigator.canPop(context)){Navigator.pop(context);}
  }
  final capital = LandMarks(
    title: 'Capital City',
    description: 'Albany is the capital city of the U.S. state of New York and the seat of Albany County. It is located on the west bank of the Hudson River, south of its confluence with the Mohawk River, and north of New York City.',
    image: '',
  );
  final museum = LandMarks(
    title: 'New York State Museum',
    description: 'The New York State Museum is a research-backed institution in Albany, New York, United States. It is located on Madison Avenue, attached to the south side of the Empire State Plaza, facing onto the plaza and towards the New York State Capitol',
    image: '',
  );
  final park = LandMarks(
    title: 'Washington Park',
    description: "Washington Park in Albany, New York is the city's premier park and the site of many festivals and gatherings. As public property it dates back to the city charter in 1686, and has seen many uses including that of gunpowder storage, square/parade grounds, and cemetery. ",
    image: '',
  );
  final List<LandMarks> albanylandmarks = [];
  int x = 0; final fish = Distance(destinationx: 42.6526, destinationy: 73.7562); String display = '';

  @override
  Widget build(BuildContext context) {
    display = fish.calc();
    if (x == 0) {
      albanylandmarks.add(capital);
      albanylandmarks.add(museum);
      albanylandmarks.add(park);
      x=1;
    }

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      home: Scaffold(
        appBar: AppBar(title: Text('City of Albany')),
      body: Column(
        children: [
          Text(cities['Albany'] ?? ''),
          Expanded(child: ListView.builder(
            padding: EdgeInsets.all(22.0),
            itemCount: albanylandmarks.length,
            itemBuilder: (BuildContext ctxt, final int index) {
              return ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage(albanylandmarks[index].image)),
                title: Text(albanylandmarks[index].title),
                subtitle: Text(albanylandmarks[index].description),
            );
            },
          )),
          Text(display),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            OutlinedButton(
              onPressed: () {Navigator.pushNamed(context, '/NewYork');},
              child: Text('New York')
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
        ],
      ),
      ),
    );
  }
}
