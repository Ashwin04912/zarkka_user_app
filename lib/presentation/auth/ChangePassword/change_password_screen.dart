import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tailme/core/widgets/CommonButton.dart';

class ScreenChangePassword extends StatelessWidget {
  const ScreenChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Password'),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w800,
          height: 0.06,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 51.h, left: 32.w, right: 32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Enter Old Password',
              style: TextStyle(
                color: Colors.white,
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
            const Text(
              'Enter Old Password',
              style: TextStyle(
                color: Colors.white,
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
