import 'package:chatapponboarding/screens/home/home.dart';
import 'package:chatapponboarding/screens/more/more.dart';
import 'package:chatapponboarding/screens/product/product.dart';
import 'package:chatapponboarding/screens/search/search.dart';
import 'package:flutter/material.dart';

import '../profile/profile.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(
            child: Text(
              'Parveen singh',
              style: TextStyle(fontSize: 25, color: Colors.white),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(1.0),
                  bottomRight: Radius.circular(1.0),
                ),
                color: Colors.white,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/page1.jpg'),
                )),
          ),
          ListTile(
            leading: Icon(Icons.home_filled),
            title: Text('Home'),
            onTap: () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()))
            },
          ),
          ListTile(
            leading: Icon(Icons.more),
            title: Text('More'),
            onTap: () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MoreScreen()))
            },
          ),
          ListTile(
            leading: Icon(Icons.production_quantity_limits_sharp),
            title: Text('Product'),
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductScreen()))
            },
          ),
          ListTile(
            leading: Icon(Icons.search),
            title: Text('Search'),
            onTap: () => {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SearchScreen()))
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()))
            },
          ),
        ],
      ),
    );
  }
}
