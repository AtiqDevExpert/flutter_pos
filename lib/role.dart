import 'package:flutter/material.dart';
import 'package:flutter_pos/LoginScreen.dart';
import 'package:flutter_svg/svg.dart';

import 'login.dart';

class select_role extends StatelessWidget {
  const select_role({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bnody POS',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text(
        //     'Bnody POS',
        //     style: TextStyle(
        //         color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
        //   ),
        //   backgroundColor: Colors.purple,
        // ),
        body: Container(
          color: Colors.white10,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage(
          //         'assets/images/background.png'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Center(
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.white,

              // padding: const EdgeInsets.all(16.0),
              // color: Colors.white.withOpacity(0.1),
              // Adjust the opacity as needed
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                  // const Text(
                  //   'بنودي',
                  //   style: TextStyle(
                  //       color: Colors.indigo,
                  //       fontSize: 80,
                  //       fontWeight: FontWeight.w500),
                  // ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    margin: EdgeInsets.only(
                        top: 100, bottom: 20, left: 20, right: 20),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Image.asset(
                        'assets/images/logo.png', // Add your image path
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ),

                  Container(
                    height: 300,
                    width: double.infinity,
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: EdgeInsets.all(30),
                      child: SvgPicture.asset(
                        'assets/images/people.svg',
                        height: 300,
                        width: 300,
                        color: Colors.indigo,
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 70,
                      width: double.infinity,
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade50,
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(width: 0.5, color: Colors.indigo),
                        shape: BoxShape.rectangle,
                        // boxShadow: [
                        //   BoxShadow(color: Colors.blue.shade200,
                        //       blurRadius: 11,
                        //       spreadRadius: 7
                        //   ),
                        // ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/employee.svg',
                            height: 30,
                            width: 20,
                            // color: Colors.gre,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: Text(
                                'Employee',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.left,
                              )),
                              Center(
                                  child: Text(
                                      'Login and start makinmg your attendence',
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w400))),
                            ],
                          )
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
