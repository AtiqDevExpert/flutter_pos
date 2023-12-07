// Flutter
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bnody POS',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text(
              'Bnody POS',
              style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 26,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.indigoAccent,
          ),
          body: Container(
            color: Colors.blue,
            height: 100,
            // margin: const EdgeInsets.only(left: 50, right: 50),
            child: const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Home',
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                    Text(
                      'Terminal Code #3',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    Text(
                      'logout',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    // TextField(
                    //   onChanged: (text) {
                    //     print(text);
                    //   },
                    //   keyboardType: TextInputType.name,
                    //   decoration: InputDecoration(
                    //     labelText: 'Email',
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //     floatingLabelStyle:
                    //         const TextStyle(color: Colors.black, fontSize: 24),
                    //     hintText: AutofillHints.username,
                    //     hintStyle: const TextStyle(
                    //         color: Colors.black26, fontSize: 14),
                    //     labelStyle: const TextStyle(color: Colors.black),
                    //     focusedBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //       borderSide: const BorderSide(color: Colors.white),
                    //     ),
                    //     enabledBorder: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //       borderSide: const BorderSide(color: Colors.white),
                    //     ),
                    //     border: OutlineInputBorder(
                    //       borderRadius: BorderRadius.circular(10.0),
                    //       borderSide:
                    //           const BorderSide(color: Colors.black, width: 1),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),

            // decoration: const BoxDecoration(
            //   image: DecorationImage(
            //     image: AssetImage(
            //         'assets/images/background.png'),
            //     fit: BoxFit.cover,
            //   ),
            // ),
          )),
    );
  }
}
