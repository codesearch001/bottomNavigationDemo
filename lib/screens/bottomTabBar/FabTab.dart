import 'package:chatapponboarding/screens/home/home.dart';
import 'package:chatapponboarding/screens/more/more.dart';
import 'package:chatapponboarding/screens/product/product.dart';
import 'package:chatapponboarding/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import '../search/search.dart';

class FabTab extends StatefulWidget {
  const FabTab({Key? key}) : super(key: key);

  @override
  State<FabTab> createState() => _FabTabState();
}

class _FabTabState extends State<FabTab> {
  int currentIndex = 0;

  void selectPage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List page = [
    HomeScreen(),
    MoreScreen(),
    ProductScreen(),
    SearchScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: selectPage,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "More", icon: Icon(Icons.more)),
          BottomNavigationBarItem(label: "Product", icon: Icon(Icons.production_quantity_limits_sharp)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
