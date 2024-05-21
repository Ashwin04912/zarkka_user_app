import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenEditAddress extends StatelessWidget {
  const ScreenEditAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit address',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(left: 26.w, right: 26.w, top: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              const Text(
                'Save address as *',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w500,
                  height: 3,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 65.w,
                    height: 26.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side:
                            const BorderSide(width: 0.80, color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                    ),
                  ),
                 
                  Container(
                    width: 65.w,
                    height: 26.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side:
                            const BorderSide(width: 0.80, color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Work',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                    ),
                  ),
                 
                  Container(
                    width: 65.w,
                    height: 26.h,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side:
                            const BorderSide(width: 0.80, color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Others',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          height: 0.09,
                        ),
                      ),
                    ),
                  ),
                
                ],
              ),
               SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 50.h, // Set your desired height here
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 50.h, // Set your desired height here
                child: TextFormField(
                  maxLength: 10,
                  keyboardType: TextInputType.phone,
                  style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    counterText: '',
                    labelText: "Contact Number",
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 50.h, // Set your desired height here
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Pincode",
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 50, // Set your desired height here
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Flat/House no/Floor/Building",
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 50.h, // Set your desired height here
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Area/Sector/Locality",
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 50.h, // Set your desired height here
                child: TextFormField(
                  style: TextStyle(color: Colors.white, fontFamily: 'Raleway'),
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    labelText: "Nearby landmark (optional)",
                    labelStyle:
                        const TextStyle(color: Colors.grey, fontSize: 10),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 20.h,
              ),
               SizedBox(
                height: 40.h,
              ),
              SizedBox(
                height: 32.h,
                width: double
                    .infinity, // Set the width of the SizedBox to double.infinity
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const ScreenLogo()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white, // Set background color here
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    'Save Address',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
