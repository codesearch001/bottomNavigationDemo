import 'package:chatapponboarding/screens/drawer/side_menu.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.yellow,
      ),
      drawer: SideMenu(),
      body: Center(
        child: Text("Home Screen"),
      ),
    );
  }
}
