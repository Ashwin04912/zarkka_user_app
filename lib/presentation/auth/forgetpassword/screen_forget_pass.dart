import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tailme/application/auth/login/login_bloc.dart';
import 'package:tailme/presentation/auth/RegisterUser/OtpVerification/screen_OtpVerification.dart';

class ScreenForgetPass extends StatefulWidget {
  const ScreenForgetPass({super.key});

  @override
  State<ScreenForgetPass> createState() => _ScreenForgetPassState();
}

class _ScreenForgetPassState extends State<ScreenForgetPass> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
            child: BlocConsumer<LoginBloc, LoginState>(
              listener: (context, state) {
                if (!state.isSubmitting) {
                  state.forgetPassEmailRespSuccessOrFailure.fold(
                    () {},
                    (some) {
                      some.fold(
                        (f) {
                          final message = f.maybeWhen(
                            invalidEmailFormat: () => 'Invalid Email Format',
                            serverError: () => 'Server error',
                            userNotFound: () => 'User not found',
                            orElse: () => null,
                          );
                          if (message != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(message,style: const TextStyle(color: Colors.red,fontFamily: 'Raleway'),)),
                            );
                          }
                        },
                        (s) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenOtpVerfication(
                                email: emailController.text,
                                isForget: true,
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                }
              },
              builder: (context, state) {
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      SizedBox(height: 55.h),
                      const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'urbanist',
                          fontWeight: FontWeight.w700,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      const Text(
                        "Don't worry! It occurs. Please enter the email address linked with your account.",
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
                        child: TextFormField(
                          controller: emailController,
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                            hintText: "Enter your email",
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
                              return 'Please enter your email';
                            }
                            final emailRegex = RegExp(
                              r'^[^@]+@[^@]+\.[^@]+$',
                            );
                            if (!emailRegex.hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
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
                                  backgroundColor:
                                      WidgetStateProperty.all<Color>(
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
                                    BlocProvider.of<LoginBloc>(context).add(
                                      LoginEvent.sendCodePressesEvent(
                                        email: emailController.text,
                                      ),
                                    );
                                  }
                                },
                                child: const Text(
                                  'Send Code',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Remember Password?',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Urbanist',
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              'Login',
                              style: TextStyle(
                                color: Color(0xFFFFAC4B),
                                fontFamily: 'urbanist',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ));
  }
}
