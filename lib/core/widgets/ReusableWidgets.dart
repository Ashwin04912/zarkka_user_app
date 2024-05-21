import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/presentation/Notification/Screen_notification.dart';
import 'package:tailme/presentation/wishlist/Screen_wishlist.dart';

class ReusableWidgets {
  static getAppBar(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFF343333),
      title: SizedBox(
        width: 290.w,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Stores,Materials,Products....',
            hintStyle:  const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.w400,
              
            ),
            prefixIcon: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            filled: true,
            fillColor: const Color(0xFF646E77),
            contentPadding:
                 EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ScreenWishlist()));
          },
          icon: SvgPicture.asset('assets/images/heart_ic.svg'),
        ),
        IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ScreenNotification()));
          },
          icon: SvgPicture.asset('assets/images/Alert_Bell.svg'),
        ),
      ],
    );
  }
}
