import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/presentation/Logo/ScreenLogo.dart';
import 'package:tailme/theme_util.dart';

class ScreenMyProfiles extends StatefulWidget {
   const ScreenMyProfiles({super.key});

  @override
  State<ScreenMyProfiles> createState() => _ScreenMyProfilesState();
}

class _ScreenMyProfilesState extends State<ScreenMyProfiles> {
  Future<void> _signOut(BuildContext context) async {

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('token');
   debugPrint(prefs.getString('token'));
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const ScreenLogo()),
      );
    
   
  }

  @override
  void initState() {
    getProfileDatas();
    super.initState();
  }

  String? phoneNumber;
  String? gender;
  String? name;

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    // FirebaseAuth auth = FirebaseAuth.instance;
    // User? user = auth.currentUser;
    // String? uid = user?.uid;
    return Scaffold(
      backgroundColor:isDarkMode? const Color(0xFF343333):Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.transparent,
        backgroundColor:Colors.transparent,
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset('assets/images/back_arrow.svg',color:isDarkMode? Colors.white:Colors.black,),
          ),
        ),
        // leading: Icon(Icons.arrow_back,color:isDarkMode? Colors.white:Colors.black,),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 26.w, right: 26.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SvgPicture.asset(
                "assets/images/Face_Id41.svg",
                color:isDarkMode? Colors.white: Colors.black,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Center(
              child: Text(
                "$name\n",
                style:  TextStyle(
                  color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                  fontSize: 16,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w800,
                  height: 0.06,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            const Divider(),
            SizedBox(
              height: 30.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  "Mobile",
                  style: TextStyle(
                    color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  phoneNumber.toString(), // Access 'Phone' field here
                  style:  TextStyle(
                    color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                 Text(
                  'Email Id',
                  style: TextStyle(
                    color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                    height: 5,
                  ),
                ),
                 Text(
                  "Ashwin",
                  // FirebaseAuth.instance.currentUser!.email.toString(),
                  style: TextStyle(
                    color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: -2,
                  ),
                ),
                 Text(
                  'Gender',
                  style: TextStyle(
                    color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w800,
                    height: 5,
                  ),
                ),
                Text(
                  gender.toString(),
                  style:  TextStyle(
                    color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w400,
                    height: -2,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
             const Divider(),
            SizedBox(
              height: 70.h,
            ),
            Center(
              child: SizedBox(
                width: 97.w,
                child: InkWell(
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () => _signOut(context),
                  child: SizedBox(
                    height: 30.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          "assets/images/Sign_out_button.svg",
                          color: isDarkMode? Colors.white:  const Color(0xFF1D1D1D),
                        ),
                        SizedBox(width: 8.w),
                         Text(
                          'Signout',
                          style: TextStyle(
                            color: isDarkMode? Colors.white: const Color(0xFF1D1D1D),
                            fontSize: 15,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w800,
                            height: 0.07,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  getProfileDatas() async {
    print("hello");
    // FirebaseAuth auth = FirebaseAuth.instance;
    // String? currentUid = FirebaseAuth.instance.currentUser!.uid;
    // final datas = await FirebaseFirestore.instance
    //     .collection('Users')
    //     .doc(currentUid)
    //     .get();
    // setState(() {
    //   phoneNumber = datas['phone'];
    //   gender = datas['gender'];
    //   name = datas['name'].toString().toUpperCase();
    // });
  }
}
