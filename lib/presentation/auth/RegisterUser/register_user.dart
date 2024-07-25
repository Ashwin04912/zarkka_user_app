import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/application/auth/RegisterUser/register_user_bloc.dart';
import 'package:tailme/presentation/auth/RegisterUser/OtpVerification/screen_OtpVerification.dart';

import '../../../domain/auth/RegisterUser/model/user_register_model.dart';

// ignore: must_be_immutable
class ScreenUserRegistration extends StatefulWidget {
  const ScreenUserRegistration({super.key});

  @override
  State<ScreenUserRegistration> createState() => _ScreenUserRegistrationState();
}

class _ScreenUserRegistrationState extends State<ScreenUserRegistration> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController usernameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmPasswordController = TextEditingController();

  bool _isButtonClicked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF343333),
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 72, left: 18, right: 18, bottom: 20),
                  child: BlocConsumer<RegisterUserBloc, RegisterUserState>(
                    listener: (context, state) {
                      state.successOrfailure.fold(
                        () {},
                        (a) {
                          a.fold((l) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: l.maybeWhen(
                                emailAlreadyInUse: () =>
                                    const Text("Email already in use"),
                                orElse: () => const Text("unknown error"),
                              ),
                            ));
                          }, (r) {
                            debugPrint("navigate work");
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                       ScreenOtpVerfication(email: emailController.text,)),
                              
                            );
                          });
                        },
                      );
                    },
                    builder: (context, state) {
                      return Form(
                        autovalidateMode: _isButtonClicked
                            ? AutovalidateMode.always
                            : AutovalidateMode.disabled,
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/back_arrow.svg',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SizedBox(
                              height: 85,
                              width: 280,
                              child: Text(
                                'Welcome back! Glad to see you, Again!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 57,
                            ),
                            TextFormField(
                              controller: usernameController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your username';
                                } else if (value.length < 7) {
                                  return 'Email should be atleast 6 characters';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: "Username",
                                hintStyle: const TextStyle(
                                  color: Color(0xFF8390A1),
                                  fontSize: 15,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                ),
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter an email address';
                                } else if (!RegExp(
                                        r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                                    .hasMatch(value)) {
                                  return 'Please enter a valid email address';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Email",
                                hintStyle: const TextStyle(
                                  color: Color(0xFF8390A1),
                                  fontSize: 15,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                ),
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              obscureText: state.isPassEyePressed,
                              controller: passwordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                } else if (value.length < 6) {
                                  return 'Password must be at least 6 characters long';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                  color: Color(0xFF8390A1),
                                  fontSize: 15,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                ),
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                fillColor: Colors.white,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: GestureDetector(
                                    onTap: () {
                                      BlocProvider.of<RegisterUserBloc>(context)
                                          .add(const RegisterUserEvent
                                              .eyePassButtonPressed());
                                    },
                                    child: state.isPassEyePressed
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              obscureText: state.isCpassEyePressed,
                              controller: confirmPasswordController,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please confirm your password';
                                } else if (value != passwordController.text) {
                                  return 'Passwords do not match';
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                hintText: "Confirm Password",
                                hintStyle: const TextStyle(
                                  color: Color(0xFF8390A1),
                                  fontSize: 15,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w500,
                                  height: 0.08,
                                ),
                                filled: true,
                                contentPadding:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                fillColor: Colors.white,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: GestureDetector(
                                    onTap: () {
                                      BlocProvider.of<RegisterUserBloc>(context)
                                          .add(const RegisterUserEvent
                                              .eyeCPassButtonPressed());
                                    },
                                    child: state.isCpassEyePressed
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility),
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            BlocBuilder<RegisterUserBloc,
                                RegisterUserState>(
                              builder: (context, state) {
                                if (state.isSubmitting) {
                                  return const LinearProgressIndicator(color: Colors.blue,);
                                }
                                return SizedBox(
                                   width: double.infinity,
                                height: ScreenUtil().setHeight(50),
                                  child: ElevatedButton(
                                    onPressed: () async {
                                      _isButtonClicked = true;
                                      if (formKey.currentState!.validate()) {
                                        var user = RegisterUserModel(
                                          email: emailController.text,
                                          password: passwordController.text,
                                          confirmPassword:
                                              confirmPasswordController.text,
                                          userName: usernameController.text,
                                        );
                                        BlocProvider.of<RegisterUserBloc>(
                                                context)
                                            .add(
                                          RegisterUserEvent.signUpButtonPressed(
                                            user: user,
                                          ),
                                        );
                                      }
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          WidgetStateProperty.all<Color>(
                                        const Color(
                                            0xFFFFAC4B), // Set background color here
                                      ),
                                      shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    child: const Text(
                                      'Submit',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontFamily: 'Urbanist',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                            const SizedBox(
                              height: 36,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 120,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Color(0xFFE8ECF4),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Or Login with',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  width: 120,
                                  decoration: const ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(
                                        width: 1,
                                        color: Color(0xFFE8ECF4),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 109.5,
                                  height: 56,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFFDADADA)),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/facebook_ic.svg',
                                    height: 26,
                                    width: 26,
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    //  signInWithGoogle(context);
                                  },
                                  child: Container(
                                    width: 109.5,
                                    height: 56,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        side: const BorderSide(
                                            width: 1, color: Color(0xFFDADADA)),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/images/google_ic.svg',
                                      height: 26,
                                      width: 26,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 109.5,
                                  height: 56,
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 15),
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          width: 1, color: Color(0xFFDADADA)),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/cib_apple.svg',
                                    height: 26,
                                    width: 26,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
