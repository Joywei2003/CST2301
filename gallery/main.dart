import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  int countbird=1, countcat=1, countdog=1;

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.black,
        appBar: AppBar(title: Text('Gallery - Joyce Wei')),
        body: Center(child:
          Column(children: [
            SizedBox(height: 10,),
            RawMaterialButton(
              child: Image.asset('lib/images/bird$countbird.png'),
              onPressed: (){
                countbird=countbird+1;
                setState((){
                  if (countbird==6) countbird=1;
                });
              }
            ),
            SizedBox(height: 10,),
            RawMaterialButton(
              child: Image.asset('lib/images/cat$countcat.png'),
              onPressed: (){
                countcat=countcat+1;
                setState((){
                  if (countcat==6) countcat=1;
                });
              }
            ),
            SizedBox(height: 10,),
            RawMaterialButton(
              child: Image.asset('lib/images/dog$countdog.png'),
              onPressed: (){
                countdog=countdog+1;
                setState((){
                  if (countdog==6) countdog=1;
                  });
              }
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {
                  countbird--; countcat--; countdog--;
                  if (countbird == 0) countbird = 5;
                  if (countcat == 0) countcat = 5;
                  if (countdog == 0) countdog = 5;
                  setState(() {});
                }, 
                child: Text('Prev')
              ),
              SizedBox(width: 10,),
              ElevatedButton(
                onPressed: () {
                  countbird++; countcat++; countdog++;
                  if (countbird == 6) countbird = 1;
                  if (countcat == 6) countcat = 1;
                  if (countdog == 6) countdog = 1;
                  setState(() {});
                }, 
                child: Text('Next')
              ),
            ],),
          ],),
        ),
      ),
    );
  }
}
