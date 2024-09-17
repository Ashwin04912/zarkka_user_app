import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/presentation/Home/ScreenHome.dart';
import 'package:tailme/presentation/Orders/ScreenOrders.dart';
import 'package:tailme/presentation/ProfileTab/ScreenProfile.dart';
import 'package:tailme/theme_util.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

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
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    return Scaffold(
      // backgroundColor: isDarkMode? Color(0xFF343333) :Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF0075BE), // Set selected icon color
        unselectedItemColor:isDarkMode? Colors.white :Color(0xFF1D1D1D), // Set unselected icon color
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: isDarkMode? const Color(0xFF393939) :Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 30,
              height: 30,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? const Color(0xFF0075BE) : (isDarkMode ? Colors.white:Colors.black),
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
                  _selectedIndex == 1 ? const  Color(0xFF0075BE) : (isDarkMode ? Colors.white:Colors.black),
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
                  _selectedIndex == 2 ? const Color(0xFF0075BE) : (isDarkMode ? Colors.white:Colors.black),
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
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
