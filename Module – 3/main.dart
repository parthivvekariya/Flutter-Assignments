

import 'package:flutter/material.dart';
import 'package:untitled/screen.dart';

import '53changebackground.dart';
import '60resturentscreen.dart';


void main()
{
  runApp
    (
    MaterialApp
      (
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(primarySwatch: Colors.grey),
      debugShowCheckedModeBanner: false,
      home: screen(),
    ),
  );
}

class MyApp extends StatefulWidget
{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("49-Widgets")),
      body: Column
        (
        children:
        [
          Container
            (
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration
              (
                color: Colors.orange,
              ),
            

          ),


          Row
            (
            children:
            [
              Expanded
                (
                child: Container
                  (
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(top: 8.0, right: 5.0, bottom: 8.0),
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration
                    (
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded
                (
                child: Container
                  (
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  height: 200,
                  width: 250,
                  decoration: BoxDecoration
                    (
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
          Row(
              children:
              [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only( right: 5.0, bottom: 8.0),
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only( bottom: 8.0),
                    height: 200,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
          ),
          Row(
            children:
            [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only( right: 5.0, bottom: 8.0),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only( right: 5.0, bottom: 8.0),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only( bottom: 8.0),
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton
        (
        child: Icon(Icons.navigate_next),
        onPressed: ()
        {
          Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => Screen()));
        },
      ),

    );
  }
}
