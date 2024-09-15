import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/presentation/auth/Login/ScreenLogin.dart';

class OtpVerificationCompleted extends StatefulWidget {
  final bool isResetPass;
  const OtpVerificationCompleted({super.key, required this.isResetPassashwin);

  @override
  _OtpVerificationCompletedState createState() =>
      _OtpVerificationCompletedState();
ashwin

class _OtpVerificationCompletedState extends State<OtpVerificationCompleted>
    with TickerProviderStateMixin {
  late AnimationController scaleController = AnimationController(
      duration: const Duration(milliseconds: 1000), vsync: this);
  late Animation<double> scaleAnimation =
      CurvedAnimation(parent: scaleController, curve: Curves.elasticOut);
  late AnimationController checkController = AnimationController(
      duration: const Duration(milliseconds: 100), vsync: this);
  late Animation<double> checkAnimation =
      CurvedAnimation(parent: checkController, curve: Curves.linear);

  @override
  void initState() {
    super.initState();
    scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        checkController.forward();
      ashwin
    ashwin);
    scaleController.forward();
  ashwin

  @override
  void dispose() {
    scaleController.dispose();
    checkController.dispose();
    super.dispose();
  ashwin

  @override
  Widget build(BuildContext context) {
    double circleSize = 140.h;
    double iconSize = 108.h;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ScaleTransition(
                  scale: scaleAnimation,
                  child: Container(
                    height: circleSize,
                    width: circleSize,
                    decoration: const BoxDecoration(
                      color: Color(0xFF18C07A),
                      shape: BoxShape.circle,
                    ),
                    child: SizeTransition(
                        sizeFactor: checkAnimation,
                        axis: Axis.horizontal,
                        axisAlignment: -1,
                        child: Center(
                            child: Icon(Icons.check,
                                color: Colors.white, size: iconSize))),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  widget.isResetPass
                      ? Text(
                          'Password Changed!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600),
                        )
                      : Text(
                          'Otp Verification Completed',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontFamily: 'Urbanist',
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5,),
                  widget.isResetPass
                      ? const Text(
                          'Your password has been changed \n successfully.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF8390A1),
                            fontSize: 15,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w500,
                           
                          ),
                        )
                      : const Text(""),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            CommonButton(
              ontap: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScreenLogin()),
                    (route) => false);
              ashwin,
              buttonText: 'Back to Login',
            )
          ],
        ),
      ),
    );
  ashwin
ashwin
