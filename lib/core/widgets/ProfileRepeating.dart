// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileRepeatingWidget extends StatelessWidget {
  String? title;
  String? subtitle;
  String iconasset;
  String? rightarrow;

  ProfileRepeatingWidget({
    Key? key,
    this.title,
    this.subtitle,
    required this.iconasset,
    this.rightarrow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconasset,
              color: Colors.white,
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10.w, bottom: 10.h,top: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (title != null)
                    Text(
                      title!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  if (subtitle != null)
                  Text(
                    subtitle!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w400,
                      
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            if(rightarrow==null)
            SvgPicture.asset(
              "assets/images/leftarrow.svg",
              color: Colors.white,
            ),
            
          ],
        ),
         SizedBox(height: 20.h,),
              Container(
                width: double.infinity,
                decoration:  ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 0.50.w,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color:const Color(0x5BCDCDCD),
                    ),
                  ),
                ),
              ),
               SizedBox(height: 20.h,),
      ],
    );
  }
}
