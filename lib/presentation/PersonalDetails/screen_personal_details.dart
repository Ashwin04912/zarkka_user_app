
import 'package:flutter/material.dart';
import 'package:tailme/presentation/BottomNavigation/BottomNavigation.dart';

class ScreenPersonalDetails extends StatefulWidget {
  const ScreenPersonalDetails({
    Key? key,
  }) : super(key: key);

  @override
  _ScreenDetailsState createState() => _ScreenDetailsState();
}

class _ScreenDetailsState extends State<ScreenPersonalDetails> {
  String? _selectedGender;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  String? currentEmail;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override

  // @override
  // void dispose() {
  //   _nameController.dispose();
  //   _phoneController.dispose();
  //   _emailController.dispose();
  //   _addressController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    // FirebaseAuth auth = FirebaseAuth.instance;
    // User? user = auth.currentUser;
    // currentEmail = user?.email;
    // String? currentUid = user?.uid;
    // CollectionReference users = FirebaseFirestore.instance.collection('Users');

    return Scaffold(
      backgroundColor: const Color.fromRGBO(111, 118, 130, 0.37),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 19, top: 72, right: 18, bottom: 15),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 12,
                  ),
                  const SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: Text(
                      'Personal details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: _nameController,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                        fontFamily: 'Urbanist',
                      ),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    controller: _phoneController,
                    decoration: InputDecoration(
                      counterText: "",
                      filled: true,
                      hintText: 'Phone',
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                        fontFamily: 'Urbanist',
                      ),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),

                  TextFormField(
                    maxLines: 2,
                    controller: _addressController,
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Address',
                      hintStyle: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 15,
                        fontFamily: 'Urbanist',
                      ),
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your address';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 15),
                  // Adding Row of Radio Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        focusColor: Colors.white,
                        activeColor: Colors.white,
                        value: 'male',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                      const Text(
                        'Male',
                        style: TextStyle(
                            fontFamily: 'railway',
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                      Radio(
                        splashRadius: 10,
                        focusColor: Colors.white,
                        activeColor: Colors.white,
                        value: 'female',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                      const Text(
                        'Female',
                        style: TextStyle(
                            fontFamily: 'railway',
                            fontWeight: FontWeight.w900,
                            fontSize: 17,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 124.79,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFE8ECF4),
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          child: Text(
                            'Continue as',
                            style: TextStyle(
                                fontFamily: 'Urbanist', color: Colors.white),
                          ),
                        ),
                        Container(
                          width: 124.79,
                          decoration: const ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                strokeAlign: BorderSide.strokeAlignCenter,
                                color: Color(0xFFE8ECF4),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 50,
                        width: 155,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(
                                  0xFFFFAC4B), // Set background color here
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () async {
                            // Check if form is valid before proceeding
                            // if (_formKey.currentState!.validate()) {
                            //   await users.add({
                            //     'name': _nameController.text,
                            //     'phone': _phoneController.text,
                            //     'email': currentEmail,
                            //     'address': _addressController.text,
                            //     'uid': currentUid,
                            //     'gender': _selectedGender,
                            //     'Tailor': true,
                            //   });
                            //   // Perform your action
                            // }
                          },
                          child: const Text(
                            'Tailor',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Urbanist',
                                fontSize: 15),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        height: 50,
                        width: 155,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(
                                  0xFFFFAC4B), // Set background color here
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          onPressed: () async {
                            // Check if form is valid before proceeding

                            // if (_formKey.currentState!.validate()) {
                            //   // Perform your action
                            //   await users.doc(currentUid).set({
                            //     'name': _nameController.text,
                            //     'phone': _phoneController.text,
                            //     'uid': currentUid,
                            //     'email': currentEmail,
                            //     'address': _addressController.text,
                            //     'gender': _selectedGender,
                            //     'customer': true,
                            //   });
                            //   Navigator.pushAndRemoveUntil(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) =>
                            //               const BottomNavigation()),
                            //       (route) => false);
                            // }
                          },
                          child: const Text(
                            'Customer',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Urbanist',
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
