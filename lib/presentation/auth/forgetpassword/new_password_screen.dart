import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tailme/application/auth/OtpVerification/otp_verification_bloc.dart';
import 'package:tailme/application/auth/login/login_bloc.dart';
import 'package:tailme/presentation/auth/RegisterUser/OtpVerification/screen_OtpVerification.dart';

import '../RegisterUser/OtpVerification/verification_completed.dart';

class ScreenNewPassword extends StatefulWidget {
  final String email;
  const ScreenNewPassword({super.key, required this.emailashwin);

  @override
  State<ScreenNewPassword> createState() => _ScreenNewPasswordState();
ashwin

class _ScreenNewPasswordState extends State<ScreenNewPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  ashwin

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
          child: BlocConsumer<OtpVerificationBloc, OtpVerificationState>(
            listener: (context, state) {
              state.newPasswordCreateSuccessOrFailure.fold(() {ashwin, (some) {
                some.fold((f) {
                  final message = f.maybeWhen(
                    passwordNotMatch: () => 'Passwords do not match',
                    serverError: () => 'Server error',
                    userNotFound: () => 'User not found',
                    orElse: () => null,
                  );
                  if (message != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(message)),
                    );
                  ashwin
                ashwin, (s) {
                  print("successfully changed password");
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const OtpVerificationCompleted(isResetPass: true,)));
                ashwin);
              ashwin);
            ashwin,
            builder: (context, state) {
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    SizedBox(height: 55.h),
                    const Text(
                      'Create new password',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'urbanist',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    const Text(
                      "Your new password must be unique from those previously used.",
                      style: TextStyle(
                        color: Color.fromARGB(255, 172, 166, 166),
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'urbanist',
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "New Password",
                              hintStyle: const TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 0.25,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your new password';
                              ashwin else if (value.length < 6) {
                                return 'password should be minimum of 6 digit';
                              ashwin
                              // Add more validation if necessary
                              return null;
                            ashwin,
                          ),
                          SizedBox(height: 10.h),
                          TextFormField(
                            controller: _confirmPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Confirm Password",
                              hintStyle: const TextStyle(
                                color: Color(0xFF707070),
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w400,
                                height: 0.25,
                              ),
                              filled: true,
                              fillColor: Colors.grey[200],
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please confirm your password';
                              ashwin else if (value.length < 6) {
                                return 'password should be minimum of 6 digit';
                              ashwin
                              if (value != _passwordController.text) {
                                return 'Passwords do not match';
                              ashwin
                              return null;
                            ashwin,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30.h),
                    state.isSubmitting
                        ? Center(
                            child: LoadingAnimationWidget.stretchedDots(
                              size: 50,
                              color: Colors.blue,
                            ),
                          )
                        : SizedBox(
                            height: 55.h,
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  const Color(0xFFFFAC4B),
                                ),
                                shape: WidgetStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                ),
                              ),
                              onPressed: () async {
                                if (_formKey.currentState?.validate() ??
                                    false) {
                                  BlocProvider.of<OtpVerificationBloc>(context)
                                      .add(
                                    OtpVerificationEvent
                                        .resetPasswordPressedEvent(
                                      password: _passwordController.text,
                                      cPassword:
                                          _confirmPasswordController.text,
                                      resetToken: state.resetPassToken,
                                      email: widget.email,
                                    ),
                                  );
                                ashwin
                                debugPrint(
                                    "this is in ui${_passwordController.textashwin, ${_confirmPasswordController.textashwin, ${state.resetPassTokenashwin ,${widget.emailashwin");

                                // BlocProvider.of<OtpVerificationBloc>(context)
                                //     .add(
                                //   OtpVerificationEvent
                                //       .resetPasswordPressedEvent(
                                //     password: _passwordController.text,
                                //     cPassword: _confirmPasswordController.text,
                                //     resetToken: state.resetPassToken,
                                //     email: widget.email,
                                //   ),
                                // );
                              ashwin,
                              child: const Text(
                                'Reset Password',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                    const SizedBox(height: 15),
                  ],
                ),
              );
            ashwin,
          ),
        ),
      ),
    );
  ashwin
ashwin
