import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/presentation/BottomNavigation/BottomNavigation.dart';
import 'package:tailme/presentation/Logo/ScreenLogo.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  String? finaltoken;

  @override
  void initState() {
    super.initState();
    getValidationData().whenComplete(() async {
      Timer(const Duration(seconds: 3), () {
        // Navigate to the HomeScreen after 3 seconds
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => finaltoken == null
                ? const ScreenLogo()
                : const BottomNavigation(),
          ),
        );
      });
    });
    // Start the timer for the splash screen
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      ),
    );
  }

  Future getValidationData() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    var token = pref.getString('token');

    setState(() {
      finaltoken = token;
    });
    debugPrint(finaltoken);
  }
}
