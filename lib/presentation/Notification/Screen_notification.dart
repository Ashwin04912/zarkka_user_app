import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Notification"),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 23,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only( left: 26.w, right: 26.w),
          child: Column(
            children: [
              const Divider(),
              SizedBox(height: 10.h,),
              Expanded(
                  child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 80.38.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey, // Set border color here
                            width: 1, // Set border width here
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Your order is ready\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Pick up today 5:30 PM\n',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '17.02.24',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10), // SizedBox with height 10
                    ],
                  );
                },
              ))
            ],
          ),
        ));
  }
}
