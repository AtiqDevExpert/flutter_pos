// Flutter
import 'package:flutter/material.dart';
void main() => runApp(const Login());

class Login extends StatelessWidget {
  const Login({super.key});

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
          color: Colors.indigo,
          // decoration: const BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage(
          //         'assets/images/background.png'),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Center(
            child: Container(
              width: 380,
              height: 500,
              // padding: const EdgeInsets.all(16.0),
              // color: Colors.white.withOpacity(0.1),
              // Adjust the opacity as needed
              child: Column(
                children: [
                  const Text(
                    'بنودي',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 80,
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    height: 20,
                  ),

                  // Image.asset(
                  //   'assets/images/logo1.png', // Add your image path
                  //   width: 100,
                  //   height: 100,
                  // ),
                  const Text(
                    textAlign: TextAlign.center,
                    'Sign in to your account',
                    style: TextStyle(
                        color: Colors.yellow,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (text) {
                      print(text);
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      fillColor: Colors.white,
                      floatingLabelStyle:
                          const TextStyle(color: Colors.black, fontSize: 24),
                      hintText: AutofillHints.username,
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 14),
                      labelStyle: const TextStyle(color: Colors.black),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  TextField(
                    onChanged: (text) {
                      print(text);
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      floatingLabelStyle:
                          const TextStyle(color: Colors.black, fontSize: 24),
                      labelText: 'Password',
                      labelStyle: const TextStyle(color: Colors.black),
                      hintText: AutofillHints.password,
                      hintStyle:
                          const TextStyle(color: Colors.black26, fontSize: 14),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            const BorderSide(color: Colors.black, width: 1),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      fixedSize: const Size(150, 60),
                    ),
                    onPressed: () {
                      print("login pressed");
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    // onLongPress: (){
                    //   print('long pressed');
                    // },
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
