import 'package:flutter/material.dart';

import 'intro.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _State();
}

class _State extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3500), () {});
     // ignore: use_build_context_synchronously
     Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const OnBoarding()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(width: 0.5, color: Colors.indigo),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  'بنودي',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 80,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.5, color: Colors.indigo),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  'بنودي',
                  style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 80,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.indigo,
                border: Border.all(width: 0.5, color: Colors.indigo),
                shape: BoxShape.circle,
              ),
              child: Container(
                  margin: EdgeInsets.only(top: 60),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        '1.0.0',
                        style: TextStyle(
                            color: Colors.white60,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
