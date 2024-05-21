  // ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
    
    final Function ontap;
    String buttonText;

  CommonButton({
    Key? key,
    required this.ontap,
    required this.buttonText,
  }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            ontap();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xFFFFAC4B), // Set background color here
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          child: Text(
            buttonText,
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
    }
  }
