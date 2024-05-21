import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tailme/presentation/AddAddress/add_address.dart';
import 'package:tailme/presentation/EditAddress/edit_address.dart';
import 'package:tailme/presentation/SavedAddress/popup_function/popup_dialog.dart';

class ScreenSavedAddress extends StatelessWidget {
  const ScreenSavedAddress({super.key});

  @override
  Widget build(BuildContext context) {
    int a = 673546;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saved Addresses',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 24.w, left: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Container(
              width: double.infinity,
              height: 100,
              decoration: ShapeDecoration(
                color: const Color(0x99D9D9D9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    left: 12.w, right: 12.w, top: 15.h, bottom: 9.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/current_location.svg',
                          height: 20.h,
                          width: 20.h,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Text(
                          'Use current location',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          'assets/images/arrow_left.svg',
                          height: 17.h,
                          width: 17.h,
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black.withOpacity(0.36000001430511475),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenEnterCompleteAddress(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Text(
                            'Add addres',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const Spacer(),
                          SvgPicture.asset(
                            'assets/images/arrow_left.svg',
                            height: 17.h,
                            width: 17.h,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            const Row(
              children: [
                Expanded(child: Divider()),
                Text(
                  'Saved Addresses',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                    height: 0.07,
                  ),
                ),
                Expanded(child: Divider())
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) => Column(
                  children: [
                    SizedBox(
                      height: 8.h,
                    ),
                    const Divider(color: Colors.white),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ), // Separator
                itemCount: 4,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.push_pin_outlined, color: Colors.white),
                            SizedBox(width: 10.w),
                            const Text(
                              'Work',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 28.w),
                             Text(
                              '414 example, kakkanad, Kochi\n$a',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            const SizedBox(width: 28),
                            GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScreenEditAddress()));
                              },
                              child: Container(
                                width: 74,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFDEBC9),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset('assets/images/edit.svg'),
                                    const Text(
                                      'Edit',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 15.w),
                            GestureDetector(
                              onTap: (){
                                showDeleteConfirmationDialog(context);
                              },
                              child: Container(
                                width: 74,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFFDEBC9),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    SvgPicture.asset('assets/images/delete.svg'),
                                    const Text(
                                      'Delete',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
