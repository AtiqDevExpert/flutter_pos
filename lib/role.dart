import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                  SizedBox(height: 150,),
                  const Text(
                    'بنودي',
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 80,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 50,),

                  // Image.asset(
                  //   'assets/images/logo1.png', // Add your image path
                  //   width: 100,
                  //   height: 100,
                  // ),

                  Container(
                    height: 20,
                  ),
                  Padding(padding:EdgeInsets.all(30 ,),child:
                  SvgPicture.asset(
                    'assets/images/people.svg',
                    height: 300,
                    width: 300,
                    color: Colors.indigo,
                  ),
                    ),

                  Container(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        bottom: 50, left: 50, right: 50, top: 50),
                    child: Container(
                        height: 80,
                        width: 350,
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
                              height: 40,
                              width: 40,
                              // color: Colors.gre,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Center(child: Text('Employee',style: TextStyle(fontSize: 12,color:Colors.black,fontWeight: FontWeight.w600),)),
                                Center(child: Text('Login and start makinmg your attendence',style: TextStyle(fontSize: 18,color:Colors.grey,fontWeight: FontWeight.w600))),
                              ],
                            )
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
