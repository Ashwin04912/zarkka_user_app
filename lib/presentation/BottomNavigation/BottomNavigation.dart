import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/presentation/Home/ScreenHome.dart';
import 'package:tailme/presentation/Orders/ScreenOrders.dart';
import 'package:tailme/presentation/ProfileTab/ScreenProfile.dart';
import 'package:tailme/theme_util.dart';

class BottomNavigation extends StatefulWidget {
  final int selectedIndex; // Accept the selectedIndex parameter

  const BottomNavigation({super.key, this.selectedIndex = 0}); // Default to 0 (Home)

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.selectedIndex; // Initialize _selectedIndex with the passed value
  }

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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF0075BE),
        unselectedItemColor: isDarkMode ? Colors.white : const Color(0xFF1D1D1D),
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: isDarkMode ? const Color(0xFF393939) : Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 30,
              height: 30,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? const Color(0xFF0075BE) : (isDarkMode ? Colors.white : Colors.black),
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
                  _selectedIndex == 1 ? const Color(0xFF0075BE) : (isDarkMode ? Colors.white : Colors.black),
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
                  _selectedIndex == 2 ? const Color(0xFF0075BE) : (isDarkMode ? Colors.white : Colors.black),
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
