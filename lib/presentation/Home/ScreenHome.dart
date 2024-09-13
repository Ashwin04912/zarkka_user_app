import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tailme/presentation/Shop/ScreenShop.dart';
import 'package:tailme/presentation/getHttp.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/core/widgets/imagewithtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  void initState() {
    super.initState();
    getHttp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343333),
      appBar: ReusableWidgets.getAppBar(context),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
                top: ScreenUtil().setHeight(20),
                right: ScreenUtil().setWidth(14),
                left: ScreenUtil().setWidth(14)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                const Text(
                  'Categories',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: ImageWithText(
                          imagePath: 'assets/images/men.jpg',
                          text: 'Men',
                          width: ScreenUtil().setWidth(103.67),
                          height: ScreenUtil().setHeight(44),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: ImageWithText(
                        imagePath: 'assets/images/women.png',
                        text: 'Women',
                        width: ScreenUtil().setWidth(103.67),
                        height: ScreenUtil().setHeight(44),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: ScreenUtil().setWidth(103.67),
                      height: ScreenUtil().setHeight(44),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFD66728),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Center(
                        child: Text(
                          'Kids',
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
                  child: const Text(
                    'Offers',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(200), // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5, // Number of items
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: ScreenUtil().setWidth(314), // Width of each item
                        margin: EdgeInsets.only(
                            right: ScreenUtil().setWidth(10)), // Margin between items
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/home/offers.jpg',
                            fit: BoxFit.cover, // Ensure the image covers the container properly
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
                  child: const Text(
                    'Find your styles',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of columns
                    crossAxisSpacing: 8.0, // Horizontal spacing
                    mainAxisSpacing: 8.0, // Vertical spacing
                    childAspectRatio: 1
                  
                  ),
                  itemCount: 8, // Number of items
                  shrinkWrap: true, // Makes GridView take only the necessary space
                  physics: const NeverScrollableScrollPhysics(), // Disables scrolling within GridView
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return const ScreenShop(shopname: "hello", location: "Ernakulam", image: "https://suta.in/cdn/shop/products/crimson-cranberry-248511.jpg?v=1681121009&width=900");
                        }));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: SizedBox(                 
                          width: 100, //okeyy.x`x````
                          height: 200,
                          child: Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Image.asset(
                                  'assets/images/home/blouse.jpg',
                                  fit: BoxFit.cover, // Ensure the image covers the container
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height:91.h,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    gradient: const LinearGradient(
                                      begin: Alignment(0.00, -1.00),
                                      end: Alignment(0, 1),
                                      colors: [Color(0x00D9D9D9), Color(0xFF080808)],
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: Text(
                                        'Blouse',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
