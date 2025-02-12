import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:tailme/application/orders/bloc/orders_bloc.dart';

class OrdersList extends StatelessWidget {
  final bool isPrevious;
  const OrdersList({
    super.key,
    required this.isPrevious,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrdersBloc, OrdersState>(
      listener: (context, state) {
        state.orderRespModelOrFailure.fold(() {}, (some) {
          some.fold((failure) {
            final message = failure.maybeWhen(
              userNotFound: () => "Credentials..Login again and check",
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
        BlocBuilder<OrdersBloc, OrdersState>(
                    builder: (context, state) {
                       state.isSubmitting
            ? isPrevious
                ? ListView.builder(
                        itemCount: success.data.length,
                        itemBuilder: (context, index) {
                          final upcommingorder = success.data[index];
                          return Padding(
                            padding: EdgeInsets.only(
                                left: 16.w, right: 16.w, top: 11.h),
                            child: Container(
                              width: 340.w,
                              height: 159.h,
                              decoration: ShapeDecoration(
                                color: const Color(0xFFD9D9D9),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      9.w), // You can choose to use .w here too
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 19.w,
                                        top: 18.h), // Using .w and .h
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/ShopBag.svg',
                                          height: 14.h,
                                          width: 14.w,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Delivered',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Color(0xFF1C5D8B),
                                                fontSize: 5,
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w700,
                                                height: 0.30,
                                                letterSpacing: 0.50,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Text(
                                              '  On Thu, 22 Jul 2023',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black.withOpacity(
                                                    0.699999988079071),
                                                fontSize: 5,
                                                fontFamily: 'Raleway',
                                                fontWeight: FontWeight.w500,
                                                height: 0.30,
                                              ),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8.h,
                                  ),
                                  Container(
                                    width: 317.w,
                                    height: 106.h,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFAAAAAA),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(9.w),
                                      ),
                                      shadows: [
                                        BoxShadow(
                                          color: const Color(0x47000000),
                                          blurRadius: 6.w,
                                          offset: Offset(0, 4.h),
                                          spreadRadius: 0,
                                        )
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(10.w), // Using .w
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 81.w,
                                                height: 46.h,
                                                decoration: ShapeDecoration(
                                                  color:
                                                      const Color(0xFFBCAD92),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5.w),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    left: 4.w), // Using .w
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      "D LOOK",
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'Raleway',
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                    const Text(
                                                      "Kalamassery Kochi",
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xDB363535),
                                                        fontSize: 8, // Using
                                                        fontFamily: 'Raleway',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0.16,
                                                        letterSpacing: -0.50,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Size: M',
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xDB363535),
                                                        fontSize: 6, // Using
                                                        fontFamily: 'Raleway',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 4.h, // Using .h
                                                        letterSpacing: -0.50,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              SvgPicture.asset(
                                                  'assets/images/leftarrow.svg'),
                                            ],
                                          ),
                                          const Spacer(
                                            flex: 2,
                                          ),
                                          Row(
                                            children: [
                                              const Text(
                                                'Rate the shop',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 8, // Using
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w600,
                                                  height: 0.16,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10.w, // Using .w
                                              ),
                                              SvgPicture.asset(
                                                  'assets/images/5star.svg')
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )
                //upcomming list view
                : ListView.builder(
                    itemCount: success.data[0].orderItems.length,
                    itemBuilder: (context, index) {
                      final upcommingorderitems =
                          success.data[0].orderItems[index];
                      return Padding(
                        padding:
                            EdgeInsets.only(left: 16.w, right: 16.w, top: 11.h),
                        child: Container(
                          width: 340.w,
                          height: 159.h,
                          decoration: ShapeDecoration(
                            color: const Color(0xFFD9D9D9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  9.w), // You can choose to use .w here too
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 19.w, top: 18.h), // Using .w and .h
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/images/ShopBag.svg',
                                      height: 14.h,
                                      width: 14.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "status",
                                          // upcommingorder.status,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xFF1C5D8B),
                                            fontSize: 5,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w700,
                                            height: 0.30,
                                            letterSpacing: 0.50,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        ),
                                        Text(
                                          "data",
                                          // upcommingorder.orderDate.toString(),
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.black
                                                .withOpacity(0.699999988079071),
                                            fontSize: 5,
                                            fontFamily: 'Raleway',
                                            fontWeight: FontWeight.w500,
                                            height: 0.30,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8.h,
                              ),
                              Container(
                                width: 317.w,
                                height: 106.h,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFAAAAAA),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(9.w),
                                  ),
                                  shadows: [
                                    BoxShadow(
                                      color: const Color(0x47000000),
                                      blurRadius: 6.w,
                                      offset: Offset(0, 4.h),
                                      spreadRadius: 0,
                                    )
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.w), // Using .w
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 81.w,
                                            height: 46.h,
                                            decoration: ShapeDecoration(
                                              color: const Color(0xFFBCAD92),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5.w),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: 4.w), // Using .w
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  upcommingorderitems.name,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Raleway',
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                const Text(
                                                  "Kalamassery Kochi",
                                                  style: TextStyle(
                                                    color: Color(0xDB363535),
                                                    fontSize: 8, // Using
                                                    fontFamily: 'Raleway',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.16,
                                                    letterSpacing: -0.50,
                                                  ),
                                                ),
                                                Text(
                                                  'Size: M',
                                                  style: TextStyle(
                                                    color:
                                                        const Color(0xDB363535),
                                                    fontSize: 6, // Using
                                                    fontFamily: 'Raleway',
                                                    fontWeight: FontWeight.w700,
                                                    height: 4.h, // Using .h
                                                    letterSpacing: -0.50,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          const Spacer(),
                                          SvgPicture.asset(
                                              'assets/images/leftarrow.svg'),
                                        ],
                                      ),
                                      const Spacer(
                                        flex: 2,
                                      ),
                                      Row(
                                        children: [
                                          const Text(
                                            'Rate the shop',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 8, // Using
                                              fontFamily: 'Raleway',
                                              fontWeight: FontWeight.w600,
                                              height: 0.16,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10.w, // Using .w
                                          ),
                                          SvgPicture.asset(
                                              'assets/images/5star.svg')
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  )
            : Center(
                child: LoadingAnimationWidget.stretchedDots(
                  size: 50,
                  color: Colors.blue,
                ),
              );
      },
    );
  }
}
