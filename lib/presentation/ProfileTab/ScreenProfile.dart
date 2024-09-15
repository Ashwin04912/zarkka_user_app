import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tailme/application/AddAddress/add_address_bloc.dart';
import 'package:tailme/presentation/auth/ChangePassword/change_password_screen.dart';
import 'package:tailme/presentation/ContactUs/ScreenContactUs.dart';
import 'package:tailme/presentation/MyProfile/screen_my_profiles.dart';
import 'package:tailme/core/widgets/ProfileRepeating.dart';
import 'package:tailme/presentation/SavedAddress/saved_address_screen.dart';

class ScreenProfile extends StatefulWidget {
  const ScreenProfile({super.key});

  @override
  State<ScreenProfile> createState() => _ScreenProfileState();
}

class _ScreenProfileState extends State<ScreenProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343333),
      body: Padding(
        padding: EdgeInsets.only(top: 101.h, left: 22.w, right: 22.w), // Using .h and .w
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenMyProfiles()),
                );
              },
              child: ProfileRepeatingWidget(
                title: "My Profile",
                subtitle: "Name, Email, Mobile...",
                iconasset: "assets/images/profile_ic.svg",
              ),
            ),
            GestureDetector(
              onTap: (){
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenChangePassword()),
                );
              },
              child: ProfileRepeatingWidget(
                title: "Change Password",
                iconasset: "assets/images/Login_Key.svg",
              ),
            ),
            GestureDetector(
              onTap: () {
              //  BlocProvider.of<AddAddressBloc>(context).add(const AddAddressEvent.getAllAddress());
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenSavedAddress()),
                );
              },
              child: ProfileRepeatingWidget(
                iconasset: 'assets/images/Paper_Write.svg',
                title: "Saved Addresses",
              ),
            ),
            
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ScreenContactUs()),
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