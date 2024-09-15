import 'package:flutter/material.dart';
import 'package:tailme/core/widgets/ProfileRepeating.dart';

class ScreenContactUs extends StatelessWidget {
  const ScreenContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Contact us',
          style: TextStyle(
            color: Colors.white,
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
            ProfileRepeatingWidget(
              iconasset: "assets/images/phone.svg",
              title: "Phone",
              subtitle: "+91 95578 86927 ",
              rightarrow: "no_need",
            ),
            ProfileRepeatingWidget(
              iconasset: "assets/images/mail.svg",
              title: "Email",
              subtitle: "example@gamil.com",
              rightarrow: "no_need",
            )
          ],
        ),
      ),
    );
  }
}
