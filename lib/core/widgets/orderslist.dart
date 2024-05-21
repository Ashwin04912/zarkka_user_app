import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class OrdersList extends StatelessWidget {
 const  OrdersList({ Key? key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 11.h),
          child: Container(
            width: 340.w,
            height: 159.h,
            decoration: ShapeDecoration(
              color: Color(0xFFD9D9D9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(9.w), // You can choose to use .w here too
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 19.w, top: 18.h), // Using .w and .h
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset(
                        'assets/images/ShopBag.svg',
                        height: 14.h,
                        width: 14.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '  Delivered',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF1C5D8B),
                              fontSize: 5,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0.30,
                              letterSpacing: 0.50,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            '  On Thu, 22 Jul 2023',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.699999988079071),
                              fontSize: 5,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              height: 0.30,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  width: 317.w,
                  height: 106.h,
                  decoration: ShapeDecoration(
                    color: Color(0xFFAAAAAA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9.w),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x47000000),
                        blurRadius: 6.w,
                        offset: Offset(0, 4.h),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(10.w), // Using .w
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 81.w,
                              height: 46.h,
                              decoration: ShapeDecoration(
                                color: Color(0xFFBCAD92),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5.w),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.w), // Using .w
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "D LOOK",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "Kalamassery Kochi",
                                    style: TextStyle(
                                      color: Color(0xDB363535),
                                      fontSize: 8, // Using 
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700,
                                      height: 0.16,
                                      letterSpacing: -0.50,
                                    ),
                                  ),
                                  Text(
                                    'Size: M',
                                    style: TextStyle(
                                      color: Color(0xDB363535),
                                      fontSize: 6, // Using 
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700,
                                      height: 4.h, // Using .h
                                      letterSpacing: -0.50,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Spacer(),
                            SvgPicture.asset('assets/images/leftarrow.svg'),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Row(
                          children: [
                            Text(
                              'Rate the shop',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 8, // Using 
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w600,
                                height: 0.16,
                              ),
                            ),
                            SizedBox(
                              width: 10.w, // Using .w
                            ),
                            SvgPicture.asset('assets/images/5star.svg')
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}