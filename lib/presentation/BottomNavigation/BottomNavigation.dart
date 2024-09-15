import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/presentation/Home/ScreenHome.dart';
import 'package:tailme/presentation/Orders/ScreenOrders.dart';
import 'package:tailme/presentation/ProfileTab/ScreenProfile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    const ScreenHome(),
    const ScreenOrders(),
    const ScreenProfile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343333),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: const Color(0xFF393939),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 30,
              height: 30,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? Colors.amber : Colors.white,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset(
                  "assets/images/home_ic.svg",
                  height: 24,
                  width: 24,
                ),
              ),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 100,
              height: 24,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 1 ? Colors.amber : Colors.white,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset(
                  "assets/images/Favourites_icon.svg",
                  color: Colors.white,
                ),
              ),
            ),
            label: "Orders",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 24,
              height: 24,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 2 ? Colors.amber : Colors.white,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset(
                  "assets/images/account-user.svg",
                ),
              ),
            ),
            label: "Profile",
          ),
        ],
        selectedItemColor: Colors.amber[800], // Set selected icon color
        unselectedItemColor: Colors.white, // Set unselected icon color
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
