import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/theme_util.dart';

class ScreenChangePassword extends StatelessWidget {
  const ScreenChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset(
              'assets/images/back_arrow.svg',
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
        title: const Text('Change Password'),
        titleTextStyle: TextStyle(
          color: isDarkMode ? Colors.white : Colors.black,
          fontSize: 16,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w800,
          height: 0.06,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 51.h, left: 32.w, right: 32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter Old Password',
              style: TextStyle(
                color: isDarkMode ? Colors.white : Colors.black,
                fontSize: 12,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: "Password",
                hintStyle: const TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 0.25,
                ),
                filled: true,
                fillColor: Colors.grey[200], // Set background color to grey
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Set border radius to 10
                  borderSide: BorderSide.none, // Hide the border side
                ),
              ),
            ),
            SizedBox(
              height: 43.h,
            ),
            Text(
              'Enter New Password',
              style: TextStyle(
                color: isDarkMode ? Colors.white : Colors.black,
                fontSize: 12,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w400,
                height: 0.11,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: "Enter New Password",
                hintStyle: const TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 0.25,
                ),
                filled: true,
                fillColor: Colors.grey[200], // Set background color to grey
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Set border radius to 10
                  borderSide: BorderSide.none, // Hide the border side
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            TextFormField(
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: "Re-Enter New Password",
                hintStyle: const TextStyle(
                  color: Color(0xFF707070),
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 0.25,
                ),
                filled: true,
                fillColor: Colors.grey[200], // Set background color to grey
                border: OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Set border radius to 10
                  borderSide: BorderSide.none, // Hide the border side
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            CommonButton(ontap: () {}, buttonText: "Save changes")
          ],
        ),
      ),
    );
  }
}
