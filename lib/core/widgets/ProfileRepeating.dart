// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/theme_util.dart';

class ProfileRepeatingWidget extends StatelessWidget {
  String? title;
  String? subtitle;
  String iconasset;
  String? rightarrow;

  ProfileRepeatingWidget({
    super.key,
    this.title,
    this.subtitle,
    required this.iconasset,
    this.rightarrow,
  });

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    return Column(
      children: [
        SizedBox(
          height: 60.h,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconasset,
                color:isDarkMode? Colors.white:const Color(0xFF1D1D1D),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.w, bottom: 10.h, top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (title != null)
                      Text(
                        title!,
                        style:  TextStyle(
                          color:isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                          fontSize: 15,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    if (subtitle != null)
                      Text(
                        subtitle!,
                        style:  TextStyle(
                          color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                          fontSize: 12,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                  ],
                ),
              ),
              const Spacer(),
              if (rightarrow == null)
                SvgPicture.asset(
                  "assets/images/leftarrow.svg",
                  color: isDarkMode? Colors.white: Color(0xFF1D1D1D),
                ),
            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          width: double.infinity,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.50.w,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: const Color(0x5BCDCDCD),
              ),
            ),
          ),
        ),
        //  SizedBox(height: 20.h,),
      ],
    );
  }
}
