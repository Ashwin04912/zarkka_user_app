import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:injectable/injectable.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/application/my_orders/my_orders_bloc.dart';
import 'package:tailme/core/widgets/CommonButton.dart';
import 'package:tailme/core/widgets/ReusableWidgets.dart';
import 'package:tailme/domain/my_orders/place_order_req_model.dart';
import 'package:tailme/domain/shop/create_order_resp_model.dart';
import 'package:tailme/infrastructure/string.dart';
import 'package:tailme/presentation/order_completed/screen_order_completed.dart';
import 'package:tailme/theme_util.dart';

class ScreenMyOrders extends StatefulWidget {
  const ScreenMyOrders({super.key});

  @override
  State<ScreenMyOrders> createState() => _ScreenMyOrdersState();
}

class _ScreenMyOrdersState extends State<ScreenMyOrders> {
  // bool isDataNotPresent = false;
  // @override
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
            height: 1.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: BlocConsumer<MyOrdersBloc, MyOrdersState>(
          listener: (context, state) {
            state.successOrFailure.fold(() {}, (some) {
              some.fold((f) {
                final message = f.maybeWhen(
                  cancelledByUser: () => "",
                  networkFailure: () => "Check your network connection",
                  userNotFound: () => "Login and try again",
                  validationFailure: () => "Some required fields are missing",
                  serverFailure: () => "server error..Try again later",
                  orElse: () => "Some Error Occured",
                );
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(message)));
              }, (s) {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const ScreenOrderCompleted()));
                // if (s.data.orderItems.isEmpty) {
                //   setState(() {
                //     isDataNotPresent = true;
                //   });
                // }
              });
            });
          },
          builder: (context, state) {
            if (!state.isDataPresent) {
              // Show SVG if order items are not present
              return Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/shopping.png',
                      height: 150, // Adjust the size as needed
                    ),
                    const SizedBox(
                        height: 16), // Add spacing between image and text
                    const Text(
                      "Emptyyy",
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                  ],
                ),
              );
            } else {
              return Column(
                children: [
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: state.model.data.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      final order = state.model.data[index];
                      return Container(
                        width: double.infinity,
                        decoration: ShapeDecoration(
                          color: isDarkMode
                              ? const Color(0x47D9D9D9)
                              : const Color(0x47878787),
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Colors.white),
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
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "$baseUrl${order.itemImageUrl}"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      order.name,
                                      style: TextStyle(
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
                                        fontSize: 22,
                                        fontFamily: 'Raleway',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Text(
                                      order.price.toString(),
                                      style: TextStyle(
                                        color: isDarkMode
                                            ? Colors.white
                                            : Colors.black,
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
                                        InkWell(
                                          onTap: () {
                                            BlocProvider.of<MyOrdersBloc>(
                                                    context)
                                                .add(MyOrdersEvent.decrement(
                                                    index));
                                          },
                                          child: Container(
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
                                                height: 1.0,
                                              ),
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
      
                                          //counter bloc
                                          child: BlocBuilder<MyOrdersBloc,
                                              MyOrdersState>(
                                            builder: (context, state) {
                                              return Text(
                                                state.itemCount[index]
                                                    .toString(),
                                                style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                  fontFamily: 'Raleway',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.0,
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            BlocProvider.of<MyOrdersBloc>(
                                                    context)
                                                .add(MyOrdersEvent.increment(
                                                    index));
                                          },
                                          child: Container(
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
                                                height: 1.0,
                                              ),
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
                      return const SizedBox(
                        height: 8,
                      );
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Container(
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
                              height: 1.0,
                            ),
                          ),
                        ],
                      ),
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
                          color: isDarkMode
                              ? Colors.white.withOpacity(0.20)
                              : Colors.black.withOpacity(0.20),
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
                                  color: isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                ),
                              ),
                              Text(
                                "\$168",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
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
                                  color: isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                ),
                              ),
                              Text(
                                "\$0",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery Charge',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                ),
                              ),
                              Text(
                                "\$0",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                ),
                              )
                            ],
                          ),
                          const Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Grand Total',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                ),
                              ),
                              Text(
                                "\$168",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: isDarkMode
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize: 13,
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  height: 1.0,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
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
                                color:
                                    isDarkMode ? Colors.white : Colors.black,
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
                  const SizedBox(height: 20),
                  state.isSubmitting
                      ? Center(
                          child: LoadingAnimationWidget.stretchedDots(
                            size: 50,
                            color: Colors.blue,
                          ),
                        )
                      : CommonButton(
                          ontap: () async {
                            final SharedPreferences prefs =
                                await SharedPreferences.getInstance();
                            final token = prefs.getString('token') ?? '';
      
                            List<OrderItem> orderItem = [];
                            for (int i = 0; i < state.itemCount.length; i++) {
                              debugPrint(state.model.data[i].orderItemId);
                              orderItem.add(OrderItem(
                                  orderItemId:
                                      state.model.data[i].orderItemId,
                                  qty: state.itemCount[i]));
      
                              debugPrint(
                                  "count of $i ${state.itemCount[i]} ${state.model.data[i].orderItemId}");
                            }
      
                            // Convert orderItem list to a JSON-compatible format and print it
                            print(orderItem
                                .map((item) => {
                                      'orderItemId': item.orderItemId,
                                      'qty': item.qty,
                                    })
                                .toList()
                                .toString());
      
                            final model = PlaceOrderReqModel(
                              token: token,
                              orderItems: orderItem,
                              addressId:
                                  '9509fbff-616a-4995-a49f-d061f3df8978',
                            );
      
                            BlocProvider.of<MyOrdersBloc>(context).add(
                              MyOrdersEvent.placeOrderButtonClickedEvent(
                                  orders: model),
                            );
                          },
                          buttonText: "Place Order",
                        )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
