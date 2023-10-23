import 'package:flutter/material.dart';
import 'package:simple_instagram_ui/pages/account.dart';
import 'package:simple_instagram_ui/pages/home.dart';
import 'package:simple_instagram_ui/pages/reels.dart';
import 'package:simple_instagram_ui/pages/search.dart';
import 'package:simple_instagram_ui/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate around the bottom nav bar
  int _selectedIndex = 0;

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // different pages to navigate to
  final List<Widget> _children = [
    UserHome(),
    const UserSearch(),
    const UserReels(),
    const UserShop(),
    const UserAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_call),
            label: "reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "account",
          ),
        ],
      ),
    );
  }
}
