// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AddressField extends StatelessWidget {

  String labeltext;

  AddressField({
    Key? key,
    required this.labeltext,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
                  height: 50, // Set your desired height here
                  child: TextFormField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Raleway'
                    ),
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelText: labeltext,

                      labelStyle: const TextStyle(color: Colors.grey,
                      fontSize: 10),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                  
                ),
                const SizedBox(height: 20,)
      ],
    );
  }
}
