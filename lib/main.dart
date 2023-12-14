// Flutter
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pos/splash.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(myFlutterApp());
}

class myFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Splash(),
    );
  }
}

class SpalshScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Bnody HR',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: Colors.blue.shade50,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 50, left: 50, right: 50, top: 50),
              child: Container(
                  // height: 150,width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    // borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 0.5, color: Colors.red),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade200,
                          blurRadius: 11,
                          spreadRadius: 7),
                    ],
                  ),
                  child: Center(child: Text('This is dummy box'))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 50, left: 50, right: 50, top: 50),
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    // borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 0.5, color: Colors.red),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade200,
                          blurRadius: 11,
                          spreadRadius: 7),
                    ],
                  ),
                  child: Center(child: Text('This is dummy box'))),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 50, left: 50, right: 50, top: 50),
              child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    // borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(width: 0.5, color: Colors.red),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.shade200,
                          blurRadius: 11,
                          spreadRadius: 7),
                    ],
                  ),
                  child: Center(child: Text('This is dummy box'))),
            ),
          ],
        )),
      ),
    );
  }
}
