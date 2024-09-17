import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/core/widgets/ProfileRepeating.dart';
import 'package:tailme/theme_util.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenContactUs extends StatelessWidget {
  const ScreenContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SvgPicture.asset('assets/images/back_arrow.svg',color:isDarkMode? Colors.white:Colors.black,),
          ),
        ),
        title:  Text(
          'Contact us',
          style: TextStyle(
            color: isDarkMode? Colors.white:Colors.black,
            fontSize: 15,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            height: 0.07,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(27),
        child: Column(
          children: [
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () async {
                print("call open initiated");
                final Uri phoneUri = Uri(scheme: 'tel', path: '+919544494164');
                if (await canLaunchUrl(phoneUri)) {
                  await launchUrl(phoneUri);
                } else {
                  print("Could not launch dialer");
                }
                print("call open ended");
              },
              child: ProfileRepeatingWidget(
                iconasset: "assets/images/phone.svg",
                title: "Phone",
                subtitle: "+91 95444 94164 ",
                rightarrow: "no_need",
              ),
            ),
            SizedBox(height: 20.h),
            InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () async {
                print("mail open initiated");

                // Use Uri.encodeComponent to ensure each query parameter is properly encoded
                final Uri mailUri = Uri(
                  scheme: 'mailto',
                  path: 'zarkkaonlinetailor@gmail.com',
                  query: 'subject=${Uri.encodeComponent("Subject Here")}&body=${Uri.encodeComponent("Message Here")}',
                );

                if (await canLaunchUrl(mailUri)) {
                  await launchUrl(mailUri);
                } else {
                  print("Could not launch mail");
                }
                print("mail open ended");
              },
              child: ProfileRepeatingWidget(
                iconasset: "assets/images/mail.svg",
                title: "Email",
                subtitle: "zarkkaonlinetailor@gmail.com",
                rightarrow: "no_need",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
//