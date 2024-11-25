import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/presentation/BottomNavigation/BottomNavigation.dart';
import 'package:tailme/presentation/Orders/ScreenOrders.dart';
import 'package:tailme/theme_util.dart';

class ScreenOrderCompleted extends StatelessWidget {
  const ScreenOrderCompleted({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);

    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(top: 209, left: 20, right: 20),
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/images/Successmark.svg",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Order Completed',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isDarkMode ? Colors.white : Colors.black,
                fontSize: 26,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
                width: 226,
                height: 43,
                child: Text.rich(
                  TextSpan(
                    text: 'Your OTP for courier service is ', // Regular text
                    style: TextStyle(
                      color:
                          isDarkMode ? const Color(0xFF8390A1) : Colors.black54,
                      fontSize: 15,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w500,
                      height: 1,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                        text: 'XXXX', // OTP in green color
                        style: TextStyle(
                          color: Colors.green, // Green color for the OTP
                          fontSize: 15,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 56,
              width: double
                  .infinity, // Set the width of the SizedBox to double.infinity
              child: CommonButton(
                ontap: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const BottomNavigation(selectedIndex: 1)),
                    (route) => false,
                  );
                },
                buttonText: 'Track Your Order',
              ),
            )
          ],
        ),
      )),
    );
  }
}
