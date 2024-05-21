// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';


// ignore: must_be_immutable
class ScreenShop extends StatefulWidget {

  String shopname;
  String location;
  String image;

  ScreenShop({
    Key? key,
    
    required this.shopname,
    required this.location,
    required this.image,
  }) : super(key: key);

  @override
  State<ScreenShop> createState() => _ScreenShopState();
}

class _ScreenShopState extends State<ScreenShop> {
  bool option1 = false;
  bool option2 = false;
  bool option3 = false;
  bool option4 = false;
  bool option5 = false;
  bool option6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableWidgets.getAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/back_arrow.svg',
                          color: Colors.white,
                          height: 20,
                        ),
                        Text(
                          widget.shopname,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                            height: 0.05,
                            letterSpacing: -0.50,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: 343.w,
                height: 288.h,
                margin:  EdgeInsets.symmetric(vertical: 10.h),
                decoration: ShapeDecoration(
                  color: const Color(0xFFFDEBC9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                           EdgeInsets.only(left: 20.w, right: 20.w, top: 21.h),
                      child: Container(
                        width: 402,
                        height: 170,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFBCAD92),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        child: Image.network(
                          widget.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 20.w, right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: widget.shopname + "\n",
                                  style:  TextStyle(
                                    color: Colors.black,
                                    fontSize: 24.sp,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: widget.location,
                                  style:  TextStyle(
                                    color: Color(0xDB363535),
                                    fontSize: 13.sp,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(
                                'assets/images/filled_like.svg'),
                          ),
                        ],
                      ),
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 22.w, top: 15.h, right: 23.w),
                      child: Row(
                        children: [
                          Text(
                            '\$69',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                              height: 0.11,
                              letterSpacing: -0.50,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Please select any option',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA2A2A2),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                      height: 0.07,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[700]),
                  width: double.infinity,
                  child: Column(
                    children: [
                      // if (widget.shopsnap['services'].contains('Chudidar'))
                        SizedBox(
                          height: 50.h,
                          child: CheckboxListTile(
                            title: const Text(
                              "Churidar",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            value: option1,
                            onChanged: (newValue) {
                              setState(() {
                                option1 = newValue!;
                              });
                            },
                          ),
                        ),
                      // if (widget.shopsnap['services'].contains('Nighty'))
                        SizedBox(
                          height: 50.h,
                          child: CheckboxListTile(
                              title:  Text(
                                "Nighty",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: option2,
                              onChanged: (newValue) {
                                setState(() {
                                  option2 = newValue!;
                                });
                              }),
                        ),
                      // if (widget.shopsnap['services'].contains('Blouse'))
                        SizedBox(
                          height: 50.h,
                          child: CheckboxListTile(
                              title:  Text(
                                "Blouse",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: option3,
                              onChanged: (newValue) {
                                setState(() {
                                  option3 = newValue!;
                                });
                              }),
                        ),
                      // if (widget.shopsnap['services'].contains('Top'))
                        SizedBox(
                          height: 50.h,
                          child: CheckboxListTile(
                              title:  Text(
                                "Top",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: option4,
                              onChanged: (newValue) {
                                setState(() {
                                  option4 = newValue!;
                                });
                              }),
                        ),
                      // if (widget.shopsnap['services'].contains('Reshaping'))
                        SizedBox(
                          height: 50.h,
                          child: CheckboxListTile(
                              title:  Text(
                                "Reshaping",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: option5,
                              onChanged: (newValue) {
                                setState(() {
                                  option5 = newValue!;
                                });
                              }),
                        ),
                      // if (widget.shopsnap['services'].contains('Pant'))
                        SizedBox(
                          height: 50.h,
                          child: CheckboxListTile(
                              title:  Text(
                                "Pant",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.sp,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              value: option6,
                              onChanged: (newValue) {
                                setState(() {
                                  option6 = newValue!;
                                });
                              }),
                        ),
                    ],
                  ),
                ),
              ),
              const Text(
                'Add  Comments (Optional)',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              ),
              TextFormField(
                style: TextStyle(color: Colors.white),
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Write here",
                  hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.3),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white, // Border color
                      width: 2, // Border width
                    ),
                    borderRadius: BorderRadius.circular(10), // Border radius
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 89,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE9E8E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            color: Colors.amber,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const SizedBox(
                            width: 187,
                            height: 50,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Home\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '4140 parker rd kadavantara \nKochi 682020',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.black,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CommonButton(
                buttonText: "\$69 Proceed to checkout",
                ontap: () {},
              ),
              const SizedBox(
                height: 15,
              )
            ],
          ),
        ),
      ),
    );
  }
}
