import 'package:dayone/screen/home.dart';
import 'package:dayone/screen/profile.dart';
import 'package:dayone/screen/settings.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  String userName;
  String password;

  DashboardPage(this.userName, this.password, {Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var _screens = [];
  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _screens = [
      const SettingsPage(),
      ProfilePage(widget.userName),
      const MainPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_off), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(
            () {
              _selectedIndex = index;
              print('===================');
              print(index);
              print('===================');
            },
          );
        },
      ),
    );
  }
}
