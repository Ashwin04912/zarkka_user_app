import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ScreenPaymentSuccessful extends StatelessWidget {
  const ScreenPaymentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
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
            const Text(
              'Payment completed',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            SizedBox(
              width: 226,
              height: 43,
              child: const Text(
                'Your transaction completed successfully.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF8390A1),
                  fontSize: 15,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w500,
                  height: 1,
                ),
              ),
            ),
            SizedBox(height: 20,),
           SizedBox(
            height: 56,
  width: double.infinity, // Set the width of the SizedBox to double.infinity
  child: ElevatedButton(
    onPressed: () {
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenLogo()));
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        const Color(0xFFFFAC4B), // Set background color here
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
    child: const Text(
      'Track Your Order',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w600,
        height: 0,
      ),
    ),
  ),
)

          ],
        ),
      )),
    );
  }
}
