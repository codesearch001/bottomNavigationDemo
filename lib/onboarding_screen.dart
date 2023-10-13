
import 'package:chatapponboarding/screens/bottomTabBar/FabTab.dart';
import 'package:chatapponboarding/screens/home/home.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  Color white = Colors.white;
  Color difWhite = const Color(0xFF19173D);

  List onBoarding = [
    {
      "image": 'assets/images/page1.jpg',
      "title": 'Thia is first page',
      "desc": 'Hello my first page'
    },
    {
      "image": 'assets/images/page2.jpg',
      "title": 'Thia is second page',
      "desc": 'Hello my second page'
    },
    {
      "image": 'assets/images/page3.jpg',
      "title": 'Thia is Third page',
      "desc": 'Hello my Third page'
    }
  ];

  PageController pageController = PageController();
  int currentPage = 0;

  onChange(int index) {
    setState(() {
      currentPage = index;
    });
  }

  continueMethod() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => const FabTab()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: continueMethod,
              child: Text(
                'Skip',
                style: TextStyle(color: difWhite),
              ))
        ],
      ),
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: pageController,
            itemCount: onBoarding.length,
            onPageChanged: onChange,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    onBoarding[index]['image'],
                  ),
                  Text(
                    onBoarding[index]['title'],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    onBoarding[index]['desc'],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                (currentPage == (onBoarding.length - 1))
                    ? ElevatedButton(
                        onPressed: continueMethod,
                        child: const Text('Continue'),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List<Widget>.generate(
                          onBoarding.length,
                          (index) {
                            return AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              height: 10,
                              width: (index == currentPage) ? 15 : 10,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: (index == currentPage)
                                      ? Colors.deepOrange
                                      : Colors.grey),
                            );
                          },
                        ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
