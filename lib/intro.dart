import 'package:flutter/material.dart';
import 'package:flutter_pos/role.dart';
import 'package:flutter_svg/svg.dart';
import 'login.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class OnBoardingContent {
  String image;
  String title;
  String description;
  OnBoardingContent({
    required this.image,
    required this.title,
    required this.description,
  });
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _controller;
  List<OnBoardingContent> contents = [
    OnBoardingContent(
      title: 'Keep healthy work-life balance',
      image: 'assets/images/working.svg',
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate ',
    ),
    OnBoardingContent(
      title: 'Stay organized team',
      image: 'assets/images/fries.svg',
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate ',
    ),
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _controller,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemCount: contents.length,
        itemBuilder: (_, i) {
          return Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                        // style:TextButton.styleFrom(
                        //  elevation: 5,
                        //   backgroundColor: Colors.indigo,
                        //   textStyle:const TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 12
                        //   )
                        // ),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()),
                          );
                        },
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              color: currentIndex != contents.length - 1
                                  ? Colors.indigo
                                  : Colors.white,
                              fontSize: 20),
                        ))
                  ],
                ),
                SvgPicture.asset(
                  contents[i].image,
                  height: 200,
                  width: 200,
                ),
                Text(
                  contents[i].title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  contents[i].description,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                Container(
                  width: 300,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        backgroundColor: Colors.indigo,
                      ),
                      onPressed: () {
                        if (currentIndex == contents.length - 1) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const select_role()),
                          );
                        } else {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 100),
                            curve: Curves.easeIn,
                          );
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          currentIndex == contents.length - 1
                              ? 'Continue'
                              : 'Next',
                          style: const TextStyle(
                              fontSize: 18, color: Colors.white),
                        ),
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
