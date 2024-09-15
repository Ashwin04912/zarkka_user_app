import 'package:flutter/material.dart';
import 'package:tailme/presentation/Logo/ScreenLogo.dart';

class ScreenBookNow extends StatelessWidget {
  const ScreenBookNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.only(left: 18, right: 18, bottom: 15),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 270, left: 14.4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 295,
                    child: Text(
                      'Your Favorite Dress, Delivered Fast',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -1,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 295,
              child: Text(
                'Find the best tailors in your city and get it delivered to your place!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenLogo()));
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
                  'Book Now!',
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
            ),
            const SizedBox(
              height: 15,
            ),
            
           
          ],
        ),
      ),
    );
  }
}
