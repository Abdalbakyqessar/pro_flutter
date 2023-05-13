import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pro_flutter/bottom_nav_par.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
    );
  }
}

class abod extends StatefulWidget {
  const abod({Key? key}) : super(key: key);

  @override
  _abodState createState() => _abodState();
}

class _abodState extends State<abod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 219, 218, 218),
        appBar: AppBar(
            title: Text("القحطاني تليكيوم"),
            centerTitle: true,
            actions: [Icon(Icons.settings)]),
        drawer: Drawer(),
        //AppBar
        body: Stack(children: <Widget>[
          Column(children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 136, 143, 245),
              ),
              //decoration
            ),
          ]),
          Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(top: 25),
                    margin: EdgeInsets.only(top: 70),
                    height: 130,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Column(
                      children: [
                        Text("  عبدالباقي قيصر"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('الحاصلة'),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      top: BorderSide(color: Colors.black))),
                            ),
                            Text('الرصيد'),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 110, top: 15),
                    child: Positioned(
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 39,
                        child: Icon(Icons.person, size: 55),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 80),
                height: 170,
                decoration: BoxDecoration(color: Colors.white),
              )
            ],
          )
        ]));
  }
}
