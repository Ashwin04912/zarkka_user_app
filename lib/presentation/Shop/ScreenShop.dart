import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';

class ScreenShop extends StatefulWidget {
  final String shopname;
  final String location;
  final String image;

  const ScreenShop({
    Key? key,
    required this.shopname,
    required this.location,
    required this.image,
  }) : super(key: key);

  @override
  State<ScreenShop> createState() => _ScreenShopState();
}

class _ScreenShopState extends State<ScreenShop> {
  List<bool> options = [
    false,
    false,
  ]; // State list for checkboxes

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ReusableWidgets.getAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 14, right: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/back_arrow.svg',
                      color: Colors.white,
                      height: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.shopname,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 140,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: const Color(0xFFBCAD92),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Choose one',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA2A2A2),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700],
                  ),
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: options.length,
                    shrinkWrap: true, // Important to prevent infinite height
                    physics:
                        const NeverScrollableScrollPhysics(), // Prevent independent scrolling
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 50.h,
                        child: CheckboxListTile(
                          title: const Text(
                            "Embroidery", // Use the title relevant to each option
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: options[index],
                          onChanged: (newValue) {
                            setState(() {
                              options[index] = newValue!;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),
SizedBox(height: 10,),
Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Add on',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFA2A2A2),
                      fontSize: 12,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w600,
                    ),
                  ),]),
Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[700],
                  ),
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: options.length,
                    shrinkWrap: true, // Important to prevent infinite height
                    physics:
                        const NeverScrollableScrollPhysics(), // Prevent independent scrolling
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: 50.h,
                        child: CheckboxListTile(
                          title: const Text(
                            "Embroidery", // Use the title relevant to each option
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          value: options[index],
                          onChanged: (newValue) {
                            setState(() {
                              options[index] = newValue!;
                            });
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),

              const Text(
                'Describe additional design',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/home/emergency.svg',
                    height: 20,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    'Extra payment will be there',
                    style: TextStyle(
                      color: Color(0xFFE00000),
                      fontSize: 12,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                maxLines: 3,
                decoration: InputDecoration(
                  hintText: "eg : Straight Cut Salwar Suit",
                  hintStyle: const TextStyle(
                    color: Color(0x99E8E8E8),
                    fontSize: 10,
                    fontFamily: 'Urbanist',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 85,
                decoration: ShapeDecoration(
                  color: const Color(0xFF616161),
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Colors.white),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/images/home/upload.svg'),
                    const Text(
                      '  Upload',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),

               const Text(
                'Select from below',
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 2,
                ),
              ),
              Container(
                width: double.infinity,
                height: 89,
                decoration: ShapeDecoration(
                  color: const Color(0xFFE9E8E8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            color: Colors.amber,
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 187,
                            height: 50,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Home\n',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '4140 Parker Rd Kadavanthra\nKochi 682020',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 11,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CommonButton(
                buttonText: "\$69 Proceed to checkout",
                ontap: () {},
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
