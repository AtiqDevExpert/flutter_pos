import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_sharp,
          color: Colors.white,
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: const Text('Sign In'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w800,
        ),
      ),
      backgroundColor: Colors.indigo,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(width: 0.5, color: Colors.indigo),
        ),
        child: Column(
          children: [
            Container(
              height: 50,
              width: double.infinity,
              color: Colors.indigo,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  'Sign in to begin an amazing Journey',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

              // flex: 1,
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  border: Border.all(width: 0.5, color: Colors.white),
                ),
                child:   Container(
                    height: 50,width: 100,
                    child:ElevatedButton(
                      child: Text('open'),
                      onPressed: () {

                      }
                    )
                )
              ),

          ],
        ),
      ),
    );
  }
}
