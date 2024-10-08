import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/theme_util.dart';

class ScreenMyOrders extends StatelessWidget {
  const ScreenMyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = ThemeUtil.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(17.0),
            child: SvgPicture.asset(
              'assets/images/back_arrow.svg',
              color: isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "My Orders",
          style: TextStyle(
            color: isDarkMode ? Colors.white : Colors.black,
            fontSize: 17,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            height: 0.06,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              ListView.separated(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: isDarkMode
                          ? const Color(0x47D9D9D9)
                          : const Color(0x47878787),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            width: 88,
                            height: 88,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              image: const DecorationImage(
                                image: NetworkImage(
                                    "https://www.beatitude.in/cdn/shop/articles/BA_BL_V107_1029_01_1024x.webp?v=1687177662"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Blouse',
                                  style: TextStyle(
                                    color:
                                        isDarkMode ? Colors.white : Colors.black,
                                    fontSize: 22,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  '\$65',
                                  style: TextStyle(
                                    color:
                                        isDarkMode ? Colors.white : Colors.black,
                                    fontSize: 14,
                                    fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF343434),
                                      ),
                                      child: const Text(
                                        '-',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 0.22,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 34,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: const Text(
                                        '0',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 0.22,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: 25,
                                      width: 25,
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF343434),
                                      ),
                                      child: const Text(
                                        '+',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 30,
                                          fontFamily: 'Raleway',
                                          fontWeight: FontWeight.w500,
                                          height: 0.22,
                                        ),
                                      ),
                                    ),
                                    const Spacer(), // This will push the delete icon to the right
                                    SvgPicture.asset(
                                      'assets/images/delete.svg',
                                      color: Colors.red,
                                      height: 15,
                                      width: 15,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 8,
                  );
                },
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 18.h,
                width: 78.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFFDFDFDF),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add_circle,
                      size: 15,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Add items',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF4D4D4D),
                        fontSize: 10.29,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w600,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 54.h,
              ),
              Container(
                width: double.infinity,
                height: 163.h,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: Colors.white.withOpacity(0.20000000298023224),
                    ),
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Item Total',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          // const Spacer(),
                          Text(
                            "\$168",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Service Charge',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          // const Spacer(),
                          Text(
                            "\$0",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Fee',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          // const Spacer(),
                          Text(
                            "\$0",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 13,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.grey,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Grand Total',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          ),
                          // const Spacer(),
                          Text(
                            "\$168",
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: isDarkMode ? Colors.white : Colors.black,
                              fontSize: 16,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 89.h,
                decoration: ShapeDecoration(
                  color: const Color(0x3FD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            'assets/images/arrow.svg',
                            color: isDarkMode ? Colors.white : Colors.black,
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            width: 187,
                            height: 50,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Home\n',
                                    style: TextStyle(
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
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
                                      color: isDarkMode
                                          ? Colors.white
                                          : Colors.black,
                                      fontSize: 13,
                                      fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // const Spacer(),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.edit_note,
                                color: Color(0xFF4BBB38),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // const Spacer(),
              SizedBox(height: 20,),
              CommonButton(ontap: () {}, buttonText: "Place Order")
            ],
          ),
        ),
      ),
    );
  }
}
