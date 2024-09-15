//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/core/widgets/datePickerformfield.dart';

class ScreenAccountCreate extends StatefulWidget {
  const ScreenAccountCreate({super.key});

  @override
  State<ScreenAccountCreate> createState() => _ScreenAccountCreateState();
}

class _ScreenAccountCreateState extends State<ScreenAccountCreate> {
  TextEditingController shopNameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController contactController = TextEditingController();

  late TextEditingController _dateController;
  late DateTime _selectedDate;

  bool maleQn = false;
  bool femaleQn = false;
  bool bothQn = false;
  bool churidarQn = false;
  bool nightyQn = false;
  bool blouseQn = false;
  bool topQn = false;
  bool reShaping = false;
  bool pantQn = false;
  bool othersQn = false;

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController();
    _selectedDate = DateTime.now();
    _dateController.text = _selectedDate.toString().split(' ')[0];
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text = _selectedDate.toString().split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sewcode',
          style: TextStyle(
            color: Colors.white,
            fontSize: 29,
            fontFamily: 'Urbanist',
            fontWeight: FontWeight.w700,
            height: 0.04,
            letterSpacing: -0.29,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 357,
                height: 1170,
                decoration: const BoxDecoration(color: Color(0xFF464646)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 32),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Shop Name',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 0.87,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: shopNameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: const Color(0xCCD9D9D9),
                          filled: true,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Location',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 0.87,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: locationController,
                        maxLines: 2,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: const Color(0xCCD9D9D9),
                          filled: true,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Contact number',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Urbanist',
                          fontWeight: FontWeight.w400,
                          height: 0.87,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        maxLength: 10,
                        controller: contactController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: const Color(0xCCD9D9D9),
                          filled: true,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 15),
                        child: Text(
                          'Category',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                            letterSpacing: -0.13,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[700]),
                        height: 140,
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Male",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: maleQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      maleQn = newValue!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Female",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: femaleQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      femaleQn = newValue!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Both",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: bothQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      bothQn = newValue!;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Services',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                            letterSpacing: -0.13,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[700]),
                        height: 300,
                        width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Churidar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: churidarQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      churidarQn = newValue!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Nighty",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: nightyQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      nightyQn = newValue!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Blouse",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: blouseQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      blouseQn = newValue!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Top",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: topQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      topQn = newValue!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Reshaping",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: reShaping,
                                  onChanged: (newValue) {
                                    setState(() {
                                      reShaping = newValue!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Pant",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: pantQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      pantQn = newValue!;
                                    });
                                  }),
                            ),
                            SizedBox(
                              height: 40,
                              child: CheckboxListTile(
                                  title: const Text(
                                    "Others",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  value: othersQn,
                                  onChanged: (newValue) {
                                    setState(() {
                                      othersQn = newValue!;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Date of establishing',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                            letterSpacing: -0.13,
                          ),
                        ),
                      ),
                      SizedBox(
                          width: 200, height: 40, child: DatePickerFormField()),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Upload images of your venture',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w400,
                            height: 0.10,
                            letterSpacing: -0.13,
                          ),
                        ),
                      ),
                      Container(
                        width: 213,
                        height: 112,
                        decoration: ShapeDecoration(
                          color: const Color(0xCCD9D9D9),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        child: Image.asset('assets/images/CameraModePhoto.png'),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CommonButton(
                        buttonText: "Submit",
                        ontap: () {
                          print("function passed");
                         // FirebaseFirestore firestore =
                          //    FirebaseFirestore.instance;
                          // final shops =
                          //     FirebaseFirestore.instance.collection('shops');
                          // final shopname = shopNameController;
                          // final location = locationController;
                          // final Contact = contactController;

                          List<String> categories = [];
                          if (maleQn==true) categories.add('Male');
                          if (femaleQn==true) categories.add('Female');
                          if (bothQn==true) categories.add('Both');

                           List<String> services = [];
                          if (churidarQn==true) services.add('Churidar');
                          if (nightyQn==true) services.add('Nighty');
                          if (blouseQn==true) services.add('Blouse');
                           if (topQn==true) services.add('Top');
                          if (reShaping==true) services.add('Reshaping');
                          if (pantQn==true) services.add('Pant');
                           if (othersQn==true) services.add('Others');
                         

                          // shops.add({
                          //   'Shop Name': shopname.text,
                          //   'location': location.text,
                          //   'contactnumber': Contact.text,
                          //   'Categories': categories,
                          //   'services':services,
                          //   'Date of Establishing': _selectedDate,

                          // }).then((value) => print("shop added"));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
