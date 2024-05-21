// Importing necessary packages
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:dio/dio.dart';
import 'package:tailme/presentation/getHttp.dart';
import 'package:tailme/presentation/Shop/ScreenShop.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/core/widgets/imagewithtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key}) : super(key: key);

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
    // Initialize ScreenUtil for width and height adaptation


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
                        onTap: () {
                          getHttp();
                        },
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
                    SvgPicture.asset('assets/images/all.svg'),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
                  child: const Text(
                    'Featured Shops',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                     
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(25),
                ),
                FutureBuilder<Response>(
                  future: getHttp(),
                  builder: (context, AsyncSnapshot<Response> snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}');
                    } else if (!snapshot.hasData ||
                        snapshot.data!.data.isEmpty) {
                      return const Text('No data available');
                    } else {
                      final bodyResponse = snapshot.data!.data;
                      final List<dynamic> shops = bodyResponse['data'] ?? [];
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        itemCount: shops.length,
                        itemBuilder: (context, index) {
                          final shop = shops[index];
                          final shopName = shop['business_name'];
                          final location = shop['location'];
                          final image = shop['image'];

                          return InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScreenShop(
                                      shopname: shopName.toString(),
                                      location: location.toString(),
                                      image: image.toString()),
                                ),
                              );
                            },
                            child: Container(
                              width: ScreenUtil().setWidth(343),
                              height: ScreenUtil().setHeight(288),
                              margin: EdgeInsets.symmetric(
                                vertical: ScreenUtil().setHeight(10),
                              ),
                              decoration: ShapeDecoration(
                                color: const Color(0xFFFDEBC9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                              child: Column(
                                
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left:20.sp,
                                      right:21.sp,
                                      top: 21.sp,
                                    ),
                                    child: Container(
                                      width: ScreenUtil().setWidth(302),
                                      height: ScreenUtil().setHeight(170),
                                      clipBehavior: Clip.antiAlias,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFBCAD92),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            ScreenUtil().setWidth(18),
                                          ),
                                        ),
                                      ),
                                      child: Image.network(
                                        image,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: ScreenUtil().setWidth(20),
                                      right: ScreenUtil().setWidth(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: shopName,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      ScreenUtil().setSp(24),
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "\n$location",
                                                style: TextStyle(
                                                  color: const Color(0xDB363535),
                                                  fontSize:
                                                      ScreenUtil().setSp(13),
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Spacer(),
                                        IconButton(
                                          onPressed: () {},
                                          icon: SvgPicture.asset(
                                            'assets/images/filled_like.svg',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: ScreenUtil().setWidth(22),
                                      top: ScreenUtil().setHeight(15),
                                      right: ScreenUtil().setWidth(23),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          '\$69',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: ScreenUtil().setSp(13),
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w700,
                                            height: 0.11,
                                            letterSpacing: -0.50,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }
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
