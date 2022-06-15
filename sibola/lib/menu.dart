import 'package:flutter/material.dart';

import 'package:sibola/favorite.dart';
import 'package:sibola/profile_page.dart';


import 'cart_page.dart';
import 'home_page.dart';
// import 'edit_address.dart';

class Menu extends StatefulWidget {
  static String tag = 'Menu';

  @override
  State<Menu> createState() => _Menu();
}

class _Menu extends State<Menu> {
  int currentIndex = 0;
  final Screens = [
    HomePage(),
    Favorite(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        onTap: (index) => setState(
          () => currentIndex = index,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hdr_plus),
            label: 'Tambah',  
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Pemesanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_sharp),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}