import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tailme/presentation/auth/ChangePassword/change_password_screen.dart';
import 'package:tailme/presentation/ContactUs/ScreenContactUs.dart';
import 'package:tailme/presentation/MyProfile/screen_my_profiles.dart';
import 'package:tailme/core/widgets/ProfileRepeating.dart';
import 'package:tailme/presentation/SavedAddress/saved_address_screen.dart';
import 'package:tailme/theme_util.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xFF343333) : Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
            top: 101.h, left: 22.w, right: 22.w), // Using .h and .w
        child: Column(
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenMyProfiles()),
                );
              },
              child: ProfileRepeatingWidget(
                title: "My Profile",
                subtitle: "Name, Email, Mobile...",
                iconasset: "assets/images/profile_ic.svg",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ScreenChangePassword()),
                );
              },
              child: ProfileRepeatingWidget(
                title: "Change Password",
                iconasset: "assets/images/Login_Key.svg",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                //  BlocProvider.of<AddAddressBloc>(context).add(const AddAddressEvent.getAllAddress());
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ScreenSavedAddress()),
                );
              },
              child: ProfileRepeatingWidget(
                iconasset: 'assets/images/Paper_Write.svg',
                title: "Saved Addresses",
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScreenContactUs()),
                );
              },
              child: ProfileRepeatingWidget(
                iconasset: "assets/images/Conversation_Chat_2.svg",
                title: "Contact Us",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
