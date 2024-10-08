import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tailme/presentation/auth/Login/ScreenLogin.dart';
import 'package:tailme/presentation/auth/RegisterUser/register_user.dart';


class ScreenLogo extends StatelessWidget {
  const ScreenLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(18),
          right: ScreenUtil().setWidth(18),
          bottom: ScreenUtil().setHeight(15),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(270),
                left: ScreenUtil().setWidth(14.4),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icon/logo.svg')
                  // Text(
                  //   'LOGO',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontSize: ScreenUtil().setSp(38),
                  //     fontFamily: 'Urbanist',
                  //     fontWeight: FontWeight.w800,
                  //     height: 0,
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(140),
            ),
            SizedBox(
              width: double.infinity,
              height: ScreenUtil().setHeight(50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScreenLogin()));
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    const  Color(0xFF0075BE),// Set background color here
                  ),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'Login',
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
            SizedBox(
              height: ScreenUtil().setHeight(15),
            ),
            SizedBox(
              width: double.infinity,
              height: ScreenUtil().setHeight(50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  const ScreenUserRegistration()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(
                    Colors.white, // Set background color here
                  ),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
            const Spacer(),
            // const Text(
            //   'Continue as a guest',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(
            //     color: Color(0xFFB9FFFE),
            //     fontSize: 14,
            //     fontFamily: 'Urbanist',
            //     fontWeight: FontWeight.w700,
            //     height: 0,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
