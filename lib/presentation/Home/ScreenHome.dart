import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:tailme/application/Home/home_bloc.dart';
import 'package:tailme/presentation/Shop/ScreenShop.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/core/widgets/imagewithtext.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tailme/theme_util.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
bool isDarkMode = ThemeUtil.isDarkMode(context);
    BlocProvider.of<HomeBloc>(context)
        .add(const HomeEvent.getItems(category: "Women"));
    return Scaffold(
      // backgroundColor: const Color(0xFF343333),
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
                 Text(
                  'Categories',
                  style: TextStyle(
                    color:isDarkMode? Colors.white :Colors.black,
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
                          BlocProvider.of<HomeBloc>(context)
                              .add(const HomeEvent.getItems(category: "Women"));
                        },
                        child: ImageWithText(
                          imagePath: 'assets/images/women.png',
                          text: 'Women',
                          width: ScreenUtil().setWidth(103.67),
                          height: ScreenUtil().setHeight(44),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: InkWell(
                        onTap: () {
                          BlocProvider.of<HomeBloc>(context)
                              .add(const HomeEvent.getItems(category: "Men"));
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
                    InkWell(
                      onTap: () {
                        BlocProvider.of<HomeBloc>(context)
                            .add(const HomeEvent.getItems(category: "Kids"));
                      },
                      child: Container(
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
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
                  child:  Text(
                    'Offers',
                    style: TextStyle(
                      color: isDarkMode? Colors.white :Colors.black,
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
                  height:
                      ScreenUtil().setHeight(200), // Adjust height as needed
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5, // Number of items
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: ScreenUtil().setWidth(314), // Width of each item
                        margin: EdgeInsets.only(
                            right: ScreenUtil()
                                .setWidth(10)), // Margin between items
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/images/home/offers.jpg',
                            fit: BoxFit
                                .cover, // Ensure the image covers the container properly
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: ScreenUtil().setHeight(30)),
                  child:  Text(
                    'Find your styles',
                    style: TextStyle(
                      color: isDarkMode? Colors.white :Colors.black,
                      fontSize: 24,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(10),
                ),
                BlocConsumer<HomeBloc, HomeState>(
                  listener: (context, state) {
                    state.listIfSuccess.fold(() {}, (some) {
                      some.fold((failure) {
                        final message = failure.maybeWhen(
                          userNotFound: () =>
                              "Credentials..Login again and check",
                          networkFailure: () => "Network Issue!! Try Again",
                          orElse: () => "Some error occurred",
                        );
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          message,
                          style: const TextStyle(color: Colors.red),
                        )));
                      }, (success) {});
                    });
                  },
                  builder: (context, state) {
                    if (state.isLoading) {
                      // Shimmer loading state
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          crossAxisSpacing: 10.0, // Horizontal spacing
                          mainAxisSpacing: 10.0, // Vertical spacing
                          childAspectRatio: 1,
                        ),
                        itemCount: 6, // Number of skeleton items
                        shrinkWrap: true,
                        physics:
                            const NeverScrollableScrollPhysics(), // Disable scrolling
                        itemBuilder: (BuildContext context, int index) {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey[500]!,
                            highlightColor: Colors.grey[400]!,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                color: Colors.grey, // Placeholder color
                                width: double.infinity, // Full width
                                height: 200, // Fixed height for the placeholder
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      // Actual data rendering
                      final homeListResp = state.data.items;
                      return GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns
                          crossAxisSpacing: 10.0, // Horizontal spacing
                          mainAxisSpacing: 10.0, // Vertical spacing
                          childAspectRatio:
                              1, // Aspect ratio for each grid item
                        ),
                        itemCount: homeListResp.length, // Number of items
                        shrinkWrap: true,
                        physics:
                            const NeverScrollableScrollPhysics(), // Disable scrolling within GridView
                        itemBuilder: (BuildContext context, int index) {
                          final element = homeListResp[index];
                          return GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return ScreenShop(
                                  shopname: element.name,
                                  location: "Ernakulam",
                                  image: element.images[0],
                                );
                              }));
                            },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                width: double.infinity,
                                height:
                                    200, // Ensure the item has a fixed height
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      width: double.infinity,
                                      child: Image.network(
                                        element.images[0],
                                        height: double.infinity,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 91.h,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          gradient: const LinearGradient(
                                            begin: Alignment(0.00, -1.00),
                                            end: Alignment(0, 1),
                                            colors: [
                                              Color(0x00D9D9D9),
                                              Color(0xFF080808)
                                            ],
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              element.name,
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
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
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
