// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/application/auth/OtpVerification/otp_verification_bloc.dart';
import 'package:tailme/presentation/auth/RegisterUser/OtpVerification/verification_completed.dart';

class ScreenOtpVerfication extends StatefulWidget {
  final String email;
  const ScreenOtpVerfication({super.key, required this.email});

  @override
  State<ScreenOtpVerfication> createState() => _ScreenOtpVerficationState();
}

class _ScreenOtpVerficationState extends State<ScreenOtpVerfication> {
  TextEditingController otp1 = TextEditingController();

  TextEditingController otp2 = TextEditingController();

  TextEditingController otp3 = TextEditingController();

  TextEditingController otp4 = TextEditingController();

  late String otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: SvgPicture.asset('assets/images/back_arrow.svg',
                          color: Colors.black),
                    )),
                  ),
                ),
                SizedBox(height: 55.h),
                const Text(
                  'OTP Verification',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'urbanist',
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 8.h),
                const Text(
                  'Enter the verification code we just sent on your email address.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 172, 166, 166),
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    fontFamily: 'urbanist',
                  ),
                ),
                SizedBox(height: 30.h),
                Form(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      buildOtpField(context, otp1),
                      buildOtpField(context, otp2),
                      buildOtpField(context, otp3),
                      buildOtpField(context, otp4),
                    ],
                  ),
                ),
                SizedBox(height: 30.h),
                BlocConsumer<OtpVerificationBloc, OtpVerificationState>(
                  listener: (context, state) {
                    state.successOrfailure.fold(() {}, (some) {
                      some.fold((f) {
                        final message = f.maybeWhen(
                          invalidOtp: () => 'Invalid Otp',
                          serverError: () => 'Server error',
                          userNotFound: () => 'User not found',
                          orElse: () => 'Some error occurred',
                        );

                        
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(message)),
                        );
                      }, (s) {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const OtpVerificationCompleted()));
                      });
                    });
                  },
                  builder: (context, state) {
                    if(state.isSubmitting){
                      return const LinearProgressIndicator(color: Colors.blue,);
                    }
                    return SizedBox(
                      height: 55.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                            const Color(0xFFFFAC4B),
                          ),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                          ),
                        ),
                        onPressed: () {
                          otp = otp1.text + otp2.text + otp3.text + otp4.text;
                          print(otp);
                          BlocProvider.of<OtpVerificationBloc>(context).add(
                              OtpVerificationEvent.verifyButtonClicked(
                                  otp: otp, email: widget.email));
                        },
                        child: const Text(
                          'Verify',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Urbanist',
                          ),
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 370.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Didn’t receive the code?',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'urbanist',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Resend',
                              style: TextStyle(
                                color: Colors.cyan,
                                fontFamily: 'urbanist',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildOtpField(BuildContext context, TextEditingController controller) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      height: 68.h,
      width: 68.w,
      child: Center(
        child: TextFormField(
          onChanged: (value) {
            if (value.length == 1) {
              FocusScope.of(context).nextFocus();
            } else {
              FocusScope.of(context).previousFocus();
            }
          },
          decoration: const InputDecoration.collapsed(
            hintText: "",
            fillColor: Colors.white,
          ),
          controller: controller,
          style: Theme.of(context).textTheme.headlineMedium,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
        ),
      ),
    );
  }
}
